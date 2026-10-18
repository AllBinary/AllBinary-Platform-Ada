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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.canvas.GameStatisticsFactory_Package; use org.allbinary.canvas.GameStatisticsFactory_Package;

package body org.allbinary.canvas.SpecialMessageUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Memory_Package renames Standard.org.allbinary.system.Memory_Package;
   procedure Initialize_Fields (This : in out SpecialMessageUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SpecialMessageUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpecialMessageUtil_Access is
      This : constant SpecialMessageUtil_Access := new SpecialMessageUtil;
   begin
      SpecialMessageUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SpecialMessageUtil_Access is
   begin
        return SpecialMessageUtil_Package.SINGLETON;
   end getInstance;

   function get (This : in out SpecialMessageUtil) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (Memory_Package.getInfo);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (GameStatisticsFactory_Package.getInstance.toString);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (To_Unbounded_String (" Option: "));
        if Features_Package.getInstance.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL_AUTO_SELECT) then
            stringBuffer.append (OpenGLFeatureFactory_Package.getInstance.OPENGL_AUTO_SELECT.getName);
        else
            stringBuffer.append (OpenGLFeatureFactory_Package.getInstance.OPENGL_MINIMUM.getName);
        end if;
        return stringBuffer.toString;
   end get;

begin
   null;
   SINGLETON := SpecialMessageUtil_Package.Create;

end org.allbinary.canvas.SpecialMessageUtil_Package;


