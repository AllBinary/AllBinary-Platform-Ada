--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify



package body org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package is

   procedure Initialize_Fields (This : in out TouchButtonTurnLeftResource'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TouchButtonResource_Access is
   begin
        return TouchButtonTurnLeftResource_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TouchButtonTurnLeftResource'Class) is
   begin
        TouchButtonResource_Package.Initialize (This, To_Unbounded_String ("/touch_button_turn_left_arrow_64_by_64.png"), To_Unbounded_String ("/touch_button_turn_left_arrow_hint_64_by_64.png"));
   end Initialize;

   function Create return TouchButtonTurnLeftResource_Access is
      This : constant TouchButtonTurnLeftResource_Access := new TouchButtonTurnLeftResource;
   begin
      TouchButtonTurnLeftResource_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TouchButtonResource_Access (TouchButtonTurnLeftResource_Package.Create);

end org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;


