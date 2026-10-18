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


with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;

package body org.allbinary.logic.system.PlatformAssetManager_Package is

   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   procedure Initialize_Fields (This : in out PlatformAssetManager'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformAssetManager'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformAssetManager_Access is
      This : constant PlatformAssetManager_Access := new PlatformAssetManager;
   begin
      PlatformAssetManager_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlatformAssetManager_Access is
   begin
        return PlatformAssetManager_Package.instance;
   end getInstance;

   --  throws Exception
   function getResourceAsStream (This : in out PlatformAssetManager; resource : Unbounded_String) return InputStream_Access is
      resourceUtil : ResourceUtil_Access;
      inputStream : InputStream_Access;
   begin
        resourceUtil := ResourceUtil_Package.getInstance;
        inputStream := resourceUtil.getResourceAsStream (resource);
        return inputStream;
   end getResourceAsStream;

   procedure getResourceAsStream (This : in out PlatformAssetManager; resource : Unbounded_String) is
      Java_Result : constant InputStream_Access := PlatformAssetManager'Class (This).getResourceAsStream (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceAsStream;

begin
   null;
   instance := PlatformAssetManager_Package.Create;

end org.allbinary.logic.system.PlatformAssetManager_Package;


