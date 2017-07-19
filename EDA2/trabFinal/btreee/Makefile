C_FILES = btree.c
H_FILES = $(subst .c,.h,$(C_FILES))
O_FILES = $(subst .c,.o,$(C_FILES))

MAIN = btreemain.c

# Para debugging
C_FLAGS = -g
# Sem debugging - descomentar
#C_FLAGS =

BINARY = btree

default:	$(BINARY)

$(BINARY): $(O_FILES) $(MAIN)
	gcc $(C_FLAGS) -o $@ $< $(MAIN)

%.o: %.c %.h
	gcc $(C_FLAGS) -c $<

clean:
	rm -f $(O_FILES) *~

clean-all clean_all: clean
	rm -f $(BINARY)
