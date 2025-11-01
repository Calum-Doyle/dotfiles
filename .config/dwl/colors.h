/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x11131dff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xc3c4c6ff, 0x11131dff, 0x5d6072ff },
	[SchemeSel]  = { 0x11131dff,  0xc3c4c6ff, 0x72909Eff },
	[SchemeUrg]  = { 0xc3c4c6ff, 0x72909Eff, 0x9EA59Fff },
};
