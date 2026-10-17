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


package body org.allbinary.input.motion.button.TouchButtonUpResource_Package is

   procedure Initialize_Fields (This : in out TouchButtonUpResource'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TouchButtonResource_Access is
   begin
        return TouchButtonUpResource_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TouchButtonUpResource'Class) is
   begin
        TouchButtonResource_Package.Initialize (This, To_Unbounded_String ("/touch_button_up_arrow_64_by_64.png"), To_Unbounded_String ("/touch_button_up_arrow_hint_64_by_64.png"));
   end Initialize;

   function Create return TouchButtonUpResource_Access is
      This : constant TouchButtonUpResource_Access := new TouchButtonUpResource;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant TouchButtonResource_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TouchButtonUpResource_Package.Create;

end org.allbinary.input.motion.button.TouchButtonUpResource_Package;


