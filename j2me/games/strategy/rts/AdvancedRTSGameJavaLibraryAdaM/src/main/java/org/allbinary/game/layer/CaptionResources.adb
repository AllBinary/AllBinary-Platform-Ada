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
--   
--  Generated Code Do Not Modify


package body org.allbinary.game.layer.CaptionResources_Package is

   procedure Initialize_Fields (This : in out CaptionResources'Class) is
   begin
      null;
      This.RESOURCE := To_Unbounded_String ("/unit_message_bubbled_box.png");
   end Initialize_Fields;


   function getInstance return CaptionResources_Access is
   begin
        return CaptionResources_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CaptionResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CaptionResources_Access is
      This : constant CaptionResources_Access := new CaptionResources;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant CaptionResources_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := CaptionResources_Package.Create;

end org.allbinary.game.layer.CaptionResources_Package;


