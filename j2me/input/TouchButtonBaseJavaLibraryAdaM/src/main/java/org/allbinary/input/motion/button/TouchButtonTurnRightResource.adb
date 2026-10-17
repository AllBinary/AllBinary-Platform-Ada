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


package body org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package is

   procedure Initialize_Fields (This : in out TouchButtonTurnRightResource'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TouchButtonResource_Access is
   begin
        return TouchButtonTurnRightResource_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TouchButtonTurnRightResource'Class) is
   begin
        TouchButtonResource_Package.Initialize (This, To_Unbounded_String ("/touch_button_turn_right_arrow_64_by_64.png"), To_Unbounded_String ("/touch_button_turn_right_arrow_hint_64_by_64.png"));
   end Initialize;

   function Create return TouchButtonTurnRightResource_Access is
      This : constant TouchButtonTurnRightResource_Access := new TouchButtonTurnRightResource;
   begin
      TouchButtonTurnRightResource_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TouchButtonTurnRightResource_Package.Create;

end org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;


