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


with org.allbinary.logic.java.anyType.clazz.loader.ClassLoader_Package; use org.allbinary.logic.java.anyType.clazz.loader.ClassLoader_Package;

package body org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package is

   procedure Initialize_Fields (This : in out ClassLoaderUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ClassLoaderUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ClassLoaderUtil_Access is
      This : constant ClassLoaderUtil_Access := new ClassLoaderUtil;
   begin
      ClassLoaderUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getName (anyType_Param : access Java_Object'Class) return Unbounded_String is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      classLoader : ClassLoader_Access;
   begin
        classLoader := anyType.all'Tag.getClassLoader;
        if (classLoader) /= (null) then
            return To_Unbounded_String ("ClassLoader: ") & To_Unbounded_String (Ada.Tags.Expanded_Name (classLoader.all'Tag));
        end if;
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to get ClassLoader")));
   end getName;

   procedure getName (anyType_Param : access Java_Object'Class) is
      Java_Result : constant Unbounded_String := getName (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   function getName (Value : Unbounded_String) return Unbounded_String is
   begin
      return getName (Java_Box (Value));
   end getName;

   procedure getName (Value : Unbounded_String) is
      Java_Result : constant Unbounded_String := getName (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

end org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil_Package;


