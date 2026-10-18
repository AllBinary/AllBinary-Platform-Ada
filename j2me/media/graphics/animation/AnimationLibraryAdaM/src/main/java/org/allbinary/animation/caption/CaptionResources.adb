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



package body org.allbinary.animation.caption.CaptionResources_Package is

   procedure Initialize_Fields (This : in out CaptionResources'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CaptionResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CaptionResources_Access is
      This : constant CaptionResources_Access := new CaptionResources;
   begin
      CaptionResources_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   RESOURCE := To_Unbounded_String ("/character_message_bubbled_box.png");

end org.allbinary.animation.caption.CaptionResources_Package;


