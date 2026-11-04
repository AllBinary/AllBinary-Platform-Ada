--  Generated Code Do Not Modify


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.analog.AnalogLocationInput_Package; use org.allbinary.game.input.analog.AnalogLocationInput_Package;
with org.allbinary.game.input.analog.AnalogLocationInput_Package_References;
with org.allbinary.game.input.analog.AnalogLocationInput_Package;

package body org.allbinary.game.input.analog.AnalogLocationInputFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype AnalogLocationInput_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access;
   function "=" (Left, Right : AnalogLocationInput_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array;
   function "=" (Left, Right : AnalogLocationInput_Access_Array) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   procedure Initialize_Fields (This : in out AnalogLocationInputFactory'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return AnalogLocationInputFactory_Access is
   begin
        return AnalogLocationInputFactory_Access (AnalogLocationInputFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out AnalogLocationInputFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AnalogLocationInputFactory_Access is
      This : constant AnalogLocationInputFactory_Access := new AnalogLocationInputFactory;
   begin
      AnalogLocationInputFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer) is
      analogLocationInput : AnalogLocationInput_Access;
   begin
        analogLocationInput := AnalogLocationInput_Access (AnalogLocationInput_Package.NULL_ANALOG_LOCATION_INPUT);
        if (playerInputId) < (This.list.size) then
            analogLocationInput := AnalogLocationInput_Access (This.list.get (playerInputId));
        end if;
        if (analogLocationInput) = (AnalogLocationInput_Package.NULL_ANALOG_LOCATION_INPUT) then
            analogLocationInput := AnalogLocationInput_Package.Create (playerInputId);
            This.list.add (Java_Object_Access (analogLocationInput));
        end if;
   end addPlayer;

   function getInstanceForPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer) return AnalogLocationInput_Access is
   begin
        return AnalogLocationInput_Access (This.list.get (playerInputId));
   end getInstanceForPlayer;

   function getList (This : in out AnalogLocationInputFactory) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

   procedure getInstanceForPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer) is
      Java_Result : constant AnalogLocationInput_Access := AnalogLocationInputFactory'Class (This).getInstanceForPlayer (playerInputId => playerInputId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForPlayer;

begin
   null;
   instance := AnalogLocationInputFactory_Package.Create;

end org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;


