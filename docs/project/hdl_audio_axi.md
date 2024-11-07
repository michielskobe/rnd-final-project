# Audio AXI stream 

We want to have a consistant way to transfer data between entities, so we make a VHDL package containing everything we need to define the needed interfaces. 

```VHDL
package axi4_audio_pkg is

    constant c_audio_width  : integer := 24;
    constant c_ID_width     : integer := 4;

    type t_axi4_audio_fwd is record
        TValid : STD_LOGIC;
        TLast : STD_LOGIC;
        TData : STD_LOGIC_VECTOR(c_audio_width - 1 downto 0);
        TID : STD_LOGIC_VECTOR(c_ID_width - 1 downto 0);
    end record t_axi4_audio_fwd;

    type t_axi4_audio_bwd is record
        TReady : STD_LOGIC;
    end record t_axi4_audio_bwd;

end package axi4_audio_pkg;
```
