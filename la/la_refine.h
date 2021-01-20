
/*@
 @  type cty = HEADER*;
 @  logic cty cbe = _heapstart.ptr;
 @  logic cty cen = _heapend.ptr;
 @  logic integer csz(cty x) = (x->size)*sizeof(HEADER);
 @
 @  logic cty fbe = frhd;
 @  logic cty fen = \null;
 @  logic cty fn(cty x) = x->ptr;
 @
 @  logic char* malloc = "laAlloc";
 @  logic char* minit = "laInit"; 
 @  logic char* free = "laFree";
 @*/

 //  logic integer cdt = sizeof(HEADER);
