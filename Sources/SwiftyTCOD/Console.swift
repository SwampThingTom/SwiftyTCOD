//
//  Console.swift
//  Created by Thomas Aylesworth on 6/17/20.
//

import Foundation
import tcod

public enum Renderer: UInt32 {
    case glsl
    case opengl
    case sdl
    case sdl2
    case opengl2
}

public class Console {
    
    /// Specify a custom bitmap font. Should be called  before initializing a `Console`.
    class func setCustomFont(fontFile: String, flags: Int, numCharHorizontal: Int = 0, numCharVertical: Int = 0) {
        TCOD_console_set_custom_font(fontFile, Int32(flags), Int32(numCharHorizontal), Int32(numCharVertical))
    }
    
    /// True if the window is closing.
    static var isWindowClosed: Bool {
        return TCOD_console_is_window_closed()
    }
    
    /// Create the game window.
    init?(width: Int, height: Int, title: String, isFullScreen: Bool = false, renderer: Renderer = .sdl) {
        let result = TCOD_console_init_root(Int32(width),
                                            Int32(height),
                                            title,
                                            isFullScreen,
                                            TCOD_renderer_t(rawValue: renderer.rawValue))
        guard result == 0 else { return nil }
    }
    
    deinit {
        TCOD_quit()
    }
    
    /// Set the default foreground color.
    func setDefaultForeground(_ color: TCOD_color_t) {
        TCOD_console_set_default_foreground(nil, color)
    }
    
    /// Set the default background color.
    func setDefaultBackground(_ color: TCOD_color_t) {
        TCOD_console_set_default_background(nil, color)
    }
    
    /// Sets every property of a cell.
    func putChar(x: Int, y: Int, char: Character, flag: TCOD_bkgnd_flag_t = TCOD_BKGND_DEFAULT) {
        guard let asciiCharacter = char.asciiValue else { return }
        TCOD_console_put_char(nil, Int32(x), Int32(y), Int32(asciiCharacter), flag)
    }
    
    /// Applies updates from all printing functions to the console.
    func flush() {
        TCOD_console_flush()
    }
    
    /// Returns the currently pressed key, if any.
    func checkForKeypress() -> TCOD_key_t {
        return TCOD_console_check_for_keypress(0)
    }
}
