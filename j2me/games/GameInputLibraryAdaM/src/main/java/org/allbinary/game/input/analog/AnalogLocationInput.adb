--  Generated Code Do Not Modify


package body org.allbinary.game.input.analog.AnalogLocationInput_Package is

   procedure Initialize_Fields (This : in out AnalogLocationInput'Class) is
   begin
      null;
      
      
      This.rz := 0;
      This.rightTrigger := 0;
      This.leftTrigger := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AnalogLocationInput'Class; playerId : Integer) is
   begin
      Initialize_Fields (This);
        This.playerId := playerId;
        This.customGPoint := CustomGPoint_Package.Create (0, 0, 0);
   end Initialize;

   function Create (playerId : Integer) return AnalogLocationInput_Access is
      This : constant AnalogLocationInput_Access := new AnalogLocationInput;
   begin
      AnalogLocationInput_Package.Initialize (This.all, playerId);
      return This;
   end Create;

   function getPlayerId (This : in out AnalogLocationInput) return Integer is
   begin
        return This.playerId;
   end getPlayerId;

   function getCustomGPoint (This : in out AnalogLocationInput) return CustomGPoint_Access is
   begin
        return This.customGPoint;
   end getCustomGPoint;

   function getRz (This : in out AnalogLocationInput) return Integer is
   begin
        return This.rz;
   end getRz;

   procedure setRz (This : in out AnalogLocationInput; rz : Integer) is
   begin
        This.rz := rz;
   end setRz;

   function getRightTrigger (This : in out AnalogLocationInput) return Integer is
   begin
        return This.rightTrigger;
   end getRightTrigger;

   procedure setRightTrigger (This : in out AnalogLocationInput; rightTrigger : Integer) is
   begin
        This.rightTrigger := rightTrigger;
   end setRightTrigger;

   function getLeftTrigger (This : in out AnalogLocationInput) return Integer is
   begin
        return This.leftTrigger;
   end getLeftTrigger;

   procedure setLeftTrigger (This : in out AnalogLocationInput; leftTrigger : Integer) is
   begin
        This.leftTrigger := leftTrigger;
   end setLeftTrigger;

begin
   null;
   NULL_ANALOG_LOCATION_INPUT := AnalogLocationInput_Package.Create (-(1));

end org.allbinary.game.input.analog.AnalogLocationInput_Package;


