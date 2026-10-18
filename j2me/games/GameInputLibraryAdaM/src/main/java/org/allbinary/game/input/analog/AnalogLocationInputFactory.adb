--  Generated Code Do Not Modify


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.input.analog.AnalogLocationInputFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out AnalogLocationInputFactory'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return AnalogLocationInputFactory_Access is
   begin
        return AnalogLocationInputFactory_Package.instance;
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
        analogLocationInput := AnalogLocationInput_Package.NULL_ANALOG_LOCATION_INPUT;
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
      Java_Result : constant AnalogLocationInput_Access := AnalogLocationInputFactory'Class (This).getInstanceForPlayer (playerInputId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForPlayer;

begin
   null;
   instance := AnalogLocationInputFactory_Package.Create;

end org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;


