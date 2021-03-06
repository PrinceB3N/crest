/* getchar.c */
char_u *get_recorded __ARGS((void));
char_u *get_inserted __ARGS((void));
int stuff_empty __ARGS((void));
void flush_buffers __ARGS((int typeahead));
void ResetRedobuff __ARGS((void));
void saveRedobuff __ARGS((void));
void restoreRedobuff __ARGS((void));
void AppendToRedobuff __ARGS((char_u *s));
void AppendCharToRedobuff __ARGS((int c));
void AppendNumberToRedobuff __ARGS((long n));
void stuffReadbuff __ARGS((char_u *s));
void stuffcharReadbuff __ARGS((int c));
void stuffnumReadbuff __ARGS((long n));
int start_redo __ARGS((long count, int old_redo));
int start_redo_ins __ARGS((void));
void stop_redo_ins __ARGS((void));
int ins_typebuf __ARGS((char_u *str, int noremap, int offset, int nottyped));
int typebuf_typed __ARGS((void));
int typebuf_maplen __ARGS((void));
void del_typebuf __ARGS((int len, int offset));
int save_typebuf __ARGS((void));
int openscript __ARGS((char_u *name));
int using_script __ARGS((void));
void updatescript __ARGS((int c));
int vgetc __ARGS((void));
int safe_vgetc __ARGS((void));
int vpeekc __ARGS((void));
int char_avail __ARGS((void));
void vungetc __ARGS((int c));
int inchar __ARGS((char_u *buf, int maxlen, long wait_time));
int do_map __ARGS((int maptype, char_u *keys, int mode, int abbrev, char_u **ambig));
int get_map_mode __ARGS((char_u **cmdp, int forceit));
void map_clear __ARGS((char_u *cmdp, int forceit, int abbr));
char_u *set_context_in_map_cmd __ARGS((char_u *cmd, char_u *arg, int forceit, int isabbrev, int isunmap, CMDIDX cmdidx));
int ExpandMappings __ARGS((vim_regexp *prog, int *num_file, char_u ***file));
int check_abbr __ARGS((int c, char_u *ptr, int col, int mincol));
int makemap __ARGS((FILE *fd));
int putescstr __ARGS((FILE *fd, char_u *str, int set));
void check_map_keycodes __ARGS((void));
char_u *check_map __ARGS((char_u *keys, int mode, int exact));
void init_mappings __ARGS((void));
