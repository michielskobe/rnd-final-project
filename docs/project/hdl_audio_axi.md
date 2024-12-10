# Audio AXI stream 

We want to have a consistent way to transfer data between entities, so we make a VHDL package containing everything we need to define the needed interfaces. The bus consists of a single sample, its channel ID, and AXI stream control signals. We are also able to make busses of these records to efficiently manage multiple streams at once. It also allows us to make generic designs with a configurable amount of inputs. Lastly, we also defined a handy constant to define an inactive audio bus. 

```VHDL
package axi4_audio_pkg is

    -- settings for the bus
    constant c_audio_width  : integer := 24;
    constant c_ID_width     : integer := 2;

    -- bus definitions
    type t_axi4_audio_fwd is record
        TValid : STD_LOGIC;
        TLast : STD_LOGIC;
        TData : STD_LOGIC_VECTOR(c_audio_width - 1 downto 0);
        TID : STD_LOGIC_VECTOR(c_ID_width - 1 downto 0);
    end record t_axi4_audio_fwd;

    type t_axi4_audio_bwd is record
        TReady : STD_LOGIC;
    end record t_axi4_audio_bwd;

    -- arrays of axi busses
    type t_axi4_audio_fwd_bus is array(natural range <>) of t_axi4_audio_fwd;
    type t_axi4_audio_bwd_bus is array(natural range <>) of t_axi4_audio_bwd;

    -- inactive constants
    constant audio_fwd_inactive : t_axi4_audio_fwd := (
        TValid => '0',
        TLast => '0',
        TData => (others => '0'),
        TID => (others => '0')
    );

    constant audio_bwd_inactive : t_axi4_audio_bwd := (
        TReady => '0'
    );

end package axi4_audio_pkg;
```
