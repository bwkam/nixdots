{ config, pkgs, ... }:

{
  programs.ncmpcpp = {
    enable = true;
    mpdMusicDir = "${config.home.homeDirectory}/Music";
    settings = {
      mpd_music_dir = "~/Music/";
      visualizer_in_stereo = "yes";
      visualizer_data_source = "/tmp/mpd.fifo";
      visualizer_output_name = "my_fifo";
      progressbar_look = "━━╸";
      #visualizer_sync_interval = "30"

      visualizer_type = "spectrum";
      #visualizer_type = "wave"
      #visualizer_type = "wave_filled"
      #visualizer_type = "ellipse"

      visualizer_look = "◆▋";
      #visualizer_look = "+|"
      #visualizer_look = "●●"

      message_delay_time = "3";
      playlist_shorten_total_times = "yes";
      playlist_display_mode = "columns";
      browser_display_mode = "columns";
      search_engine_display_mode = "columns";
      playlist_editor_display_mode = "columns";
      autocenter_mode = "yes";
      centered_cursor = "yes";
      user_interface = "alternative";
      follow_now_playing_lyrics = "yes";
      locked_screen_width_part = "60";
      display_bitrate = "yes";
      external_editor = "nano";
      use_console_editor = "yes";
      header_window_color = "cyan";
      volume_color = "red";
      state_line_color = "yellow";
      state_flags_color = "red";
      progressbar_color = "yellow";
      statusbar_color = "cyan";
      visualizer_color = "cyan"; #magenta #cyan #green #red #blue

      mpd_host = "127.0.0.1";
      mpd_port = "6601";
      mouse_list_scroll_whole_page = "yes";
      lines_scrolled = "1";
      #ask_before_clearing_main_playlist = "yes"
      enable_window_title = "yes";
      song_columns_list_format = "(25)[cyan]{a} (40)[]{f} (30)[red]{b} (7f)[green]{l}";
    };
  };
}
