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



package body org.allbinary.game.layer.LayerCaptionResources_Package is

   procedure Initialize_Fields (This : in out LayerCaptionResources'Class) is
   begin
      null;
      This.RESOURCE := To_Unbounded_String ("/unit_message_bubbled_box.png");
   end Initialize_Fields;


   function getInstance return LayerCaptionResources_Access is
   begin
        return LayerCaptionResources_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LayerCaptionResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LayerCaptionResources_Access is
      This : constant LayerCaptionResources_Access := new LayerCaptionResources;
   begin
      LayerCaptionResources_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := LayerCaptionResources_Package.Create;

end org.allbinary.game.layer.LayerCaptionResources_Package;


