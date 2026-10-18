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


package body org.allbinary.logic.util.cache.NoCacheableFactory_Package is

   procedure Initialize_Fields (This : in out NoCacheableFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoCacheableFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoCacheableFactory_Access is
      This : constant NoCacheableFactory_Access := new NoCacheableFactory;
   begin
      NoCacheableFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out NoCacheableFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("This Factory Does Not")));
        return null;
   end getInstance;

   procedure getInstance (This : in out NoCacheableFactory; key_Param : access Java_Object'Class) is
      Java_Result : constant CacheableInterface_Access := NoCacheableFactory'Class (This).getInstance (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.NoCacheableFactory_Package;


