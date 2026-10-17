-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify


package body org.allbinary.game.layer.capital.event.CapitalEvent_Package is

   procedure Initialize_Fields (This : in out CapitalEvent'Class) is
   begin
      null;
      This.value := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CapitalEvent'Class; anyType : Java_Object_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
   end Initialize;

   function Create (anyType : Java_Object_Access) return CapitalEvent_Access is
      This : constant CapitalEvent_Access := new CapitalEvent;
   begin
      CapitalEvent_Package.Initialize (This.all, anyType);
      return This;
   end Create;

   function toString (This : in out CapitalEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("CapitalEvent: Value: " & ASCII.LF & ""));
        stringBuffer.appendint (This.getValue);
        return stringBuffer.toString;
   end toString;

   function getValue (This : in out CapitalEvent) return Integer is
   begin
        return This.value;
   end getValue;

   procedure setValue (This : in out CapitalEvent; value : Integer) is
   begin
        This.value := value;
   end setValue;

end org.allbinary.game.layer.capital.event.CapitalEvent_Package;


