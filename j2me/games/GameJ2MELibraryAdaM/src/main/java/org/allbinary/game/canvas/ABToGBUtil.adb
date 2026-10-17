-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.canvas.ABToGBUtil_Package is

   procedure Initialize_Fields (This : in out ABToGBUtil'Class) is
   begin
      null;
      This.abCanvas := NullCanvas_Package.NULL_CANVAS;
      This.allBinaryGameLayerManager := AllBinaryGameLayerManager_Package.getNullInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ABToGBUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ABToGBUtil_Access is
      This : constant ABToGBUtil_Access := new ABToGBUtil;
   begin
      ABToGBUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ABToGBUtil_Access is
   begin
        return ABToGBUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := ABToGBUtil_Package.Create;

end org.allbinary.game.canvas.ABToGBUtil_Package;


