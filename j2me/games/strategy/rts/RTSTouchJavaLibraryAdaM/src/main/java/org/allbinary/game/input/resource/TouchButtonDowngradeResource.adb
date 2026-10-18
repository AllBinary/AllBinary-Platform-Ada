-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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


with org.allbinary.input.motion.button.TouchButtonBlankResource_Package; use org.allbinary.input.motion.button.TouchButtonBlankResource_Package;

package body org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package is

   package TouchButtonBlankResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
   procedure Initialize_Fields (This : in out TouchButtonDowngradeResource'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TouchButtonResource_Access is
   begin
        return TouchButtonDowngradeResource_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TouchButtonDowngradeResource'Class) is
   begin
        TouchButtonResource_Package.Initialize (This, To_Unbounded_String ("/touch_button_downgrade_64_by_64.png"), To_Unbounded_String ("/touch_button_downgrade_hint_64_by_64.png"));
   end Initialize;

   function Create return TouchButtonDowngradeResource_Access is
      This : constant TouchButtonDowngradeResource_Access := new TouchButtonDowngradeResource;
   begin
      TouchButtonDowngradeResource_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TouchButtonResource_Access (TouchButtonDowngradeResource_Package.Create);

end org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package;


