{ config, pkgs, ... }:

{
  programs.mpv = {
    enable = true;

    config = {
      # GPU
      profile = "gpu-hq";                 # High-quality GPU profile

      # COLOR SETTINGS
      target-prim = "srgb";               # Force sRGB color space (anime/BD/streaming)
      gpu-icc-profile-auto = true;        # Automatically apply monitor ICC profile

      # HARDWARE DECODING
      hwdec = "auto";                     # Automatic hardware decoding

      # DEBANDING (anime-friendly)
      deband = true;                      # Enable debanding
      deband-iterations = 2;              # Number of debanding iterations
      deband-threshold = 20;             # Banding detection threshold
      deband-range = 18;                 # Banding search range
      deband-grain = 6;                  # Add grain to smooth the image

      # VIDEO SYNC / INTERPOLATION
      video-sync = "display-resample";    # Synchronize video with display
      interpolation = false;              # Disable motion interpolation (anime at 24p)

      # SCALING / UPSCALING
      scale = "ewa_lanczossharp";         # Main input scaling
      cscale = "ewa_lanczossharp";        # Chroma scaling
      dscale = "mitchell";                # Downscaling filter

      correct-downscaling = true;         # Correct gamma during downscaling
      linear-downscaling = true;          # Linear downscaling (reduces artifacts)
      sigmoid-upscaling = true;           # Sigmoid upscaling for smooth gradients
      sigmoid-center = 0.75;              # Sigmoid center adjustment
      sigmoid-slope = 6.5;                # Sigmoid slope adjustment
    };
  };
}
