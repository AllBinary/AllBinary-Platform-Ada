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


package body org.allbinary.canvas.SpecialMessageUtil_Package is

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


