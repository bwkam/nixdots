{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.modules.misc.mpd;
in {
  options.modules.misc.mpd.enable = lib.mkEnableOption "mpd";
  config = lib.mkIf cfg.enable {
    services.mpd = {
      enable = true;
      musicDirectory = "${config.home.homeDirectory}/Music/emo-rap";
      dataDir = "${config.home.homeDirectory}/.config/mpd";
      extraConfig = ''
        auto_update           "yes"
        restore_paused        "yes"
        audio_output {
        type            "pipewire"
        name            "PipeWire Sound Server"
        server "127.0.0.1" # add this line - MPD must connect to the local sound server
        }
        audio_output {
        	type                "fifo"
        	name                "Visualizer"
        	format              "44100:16:2"
        	path                "/tmp/mpd.fifo"
        }

        audio_output {
        	type		            "httpd"
        	name		            "lossless"
        	encoder		          "flac"
        	port		            "8000"
        	max_client	        "8"
        	mixer_type	        "software"
        	format		          "44100:16:2"
        }
      '';
      network.startWhenNeeded = true;
    };
  };
}
