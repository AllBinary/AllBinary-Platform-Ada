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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out OpenGLImageSpecificFactory'Class) is
   begin
      null;
      This.updating := False;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLImageSpecificFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLImageSpecificFactory_Access is
      This : constant OpenGLImageSpecificFactory_Access := new OpenGLImageSpecificFactory;
   begin
      OpenGLImageSpecificFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLImageSpecificFactory_Access is
   begin
        return OpenGLImageSpecificFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := OpenGLImageSpecificFactory_Package.Create;

end org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;


