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


package body org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package is

   procedure Initialize_Fields (This : in out OpenGLFeatureUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return OpenGLFeatureUtil_Access is
   begin
        return OpenGLFeatureUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OpenGLFeatureUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OpenGLFeatureUtil_Access is
      This : constant OpenGLFeatureUtil_Access := new OpenGLFeatureUtil;
   begin
      OpenGLFeatureUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isAnyThreed (This : in out OpenGLFeatureUtil) return Boolean is
   begin
        return False;
   end isAnyThreed;

begin
   null;
   instance := OpenGLFeatureUtil_Package.Create;

end org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;


