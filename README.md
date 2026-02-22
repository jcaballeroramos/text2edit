# text2edit

Browser-based video editor for interview transcriptions. Load a Whisper-generated transcript (.txt with timestamps) and a media file, then select, reorder, trim and edit subtitle clips with a visual timeline. Export to FCP XML, EDL, SRT or TXT for professional NLE workflows.

## Features

- **Dual video preview** — Source (left) and Edit (right) panels with synchronized playback
- **Visual timeline** — Canvas-based timeline with drag-to-reorder and edge-drag-to-trim
- **Subtitle management** — Merge, split, create, delete, inline edit text and timecodes
- **Favorites** — Mark subtitles with a heart, filter and export only favorites
- **AI correction** — GPT-4o-mini integration for Catalan spelling/grammar correction
- **AI chat** — Ask questions about the transcription content
- **Multiple exports** — FCP XML, CMX 3600 EDL, SRT (edit/source/favorites), TXT
- **Undo/Redo** — Full history with Cmd+Z / Cmd+Shift+Z
- **Project save/load** — .t2e project files with native file picker

## Usage

Open `index.html` in Chrome. No server, dependencies or installation required.

1. Load a `.txt` transcript (Whisper format with timestamps)
2. Load the corresponding media file (MP4, audio)
3. Double-click subtitles to add them to the edit timeline
4. Reorder, trim and edit clips using the timeline or the list
5. Export to your preferred format

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| Space | Play/Pause |
| Shift+Arrow Right | Add to edit |
| Shift+Arrow Up/Down | Extend selection |
| Cmd+D | Merge selected |
| Cmd+X | Split at word |
| Cmd+N | New subtitle |
| Cmd+A | Select all visible |
| Cmd+S | Save project |
| Cmd+Z | Undo |
| Cmd+Shift+Z | Redo |
| Shift+S | Toggle favorite |
| Cmd+I | Toggle AI sidebar |
| Backspace | Delete selected |

## Deploy

### Docker / Railway

```bash
docker build -t text2edit .
docker run -p 8080:80 text2edit
```

Connect your GitHub repo to Railway and it will auto-detect the Dockerfile.

### GitHub Pages

Push to GitHub, enable Pages in Settings (main branch, root directory).

## License

MIT
