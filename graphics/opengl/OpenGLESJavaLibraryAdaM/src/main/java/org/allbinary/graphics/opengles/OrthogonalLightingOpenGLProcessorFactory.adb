-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package; use org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package; use org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.khronos.opengles.GL10_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.graphics.opengles.NullOpenGLProcessorFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package is

   subtype OpenGLProcessor_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access;
   function "=" (Left, Right : OpenGLProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array;
   function "=" (Left, Right : OpenGLProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   subtype OpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out OrthogonalLightingOpenGLProcessorFactory'Class) is
   begin
      null;
      This.sceneLightingOrthogonalModeOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
      This.sceneLightsOrthogonalModeOpenGLProcessor := NullOpenGLProcessorFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out OrthogonalLightingOpenGLProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OrthogonalLightingOpenGLProcessorFactory_Access is
      This : constant OrthogonalLightingOpenGLProcessorFactory_Access := new OrthogonalLightingOpenGLProcessorFactory;
   begin
      OrthogonalLightingOpenGLProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OrthogonalLightingOpenGLProcessorFactory_Access is
   begin
        return OrthogonalLightingOpenGLProcessorFactory_Access (OrthogonalLightingOpenGLProcessorFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := OrthogonalLightingOpenGLProcessorFactory_Package.Create;

end org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package;


