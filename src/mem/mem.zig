const std = @import("std");
const log = std.log.scoped(.mem);
const Allocator = std.mem.Allocator;

const PageAllocator = @import("PageAllocator.zig");

var page_allocator_instance: PageAllocator = undefined;
pub fn initPageAllocator(memory: []align(4096) u8) PageAllocator {
    page_allocator_instance = PageAllocator.init(memory);
    return page_allocator_instance;
}
