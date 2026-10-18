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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.configuration.ContextConfigurationData_Package; use org.allbinary.business.context.configuration.ContextConfigurationData_Package;

package body org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out ContextConfigurationTableMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ContextConfigurationTableMapping'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) is
      contextConfigurationInterface : constant ContextConfigurationInterface_Access := ContextConfigurationInterface_Access (contextConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.contextConfigurationInterface := contextConfigurationInterface;
   end Initialize;

   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) return ContextConfigurationTableMapping_Access is
      This : constant ContextConfigurationTableMapping_Access := new ContextConfigurationTableMapping;
   begin
      ContextConfigurationTableMapping_Package.Initialize (This.all, contextConfigurationInterface_Param);
      return This;
   end Create;

   function toHashMap (This : in out ContextConfigurationTableMapping) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        return hashMap;
   end toHashMap;

   --  throws Exception
   function getKey (This : in out ContextConfigurationTableMapping) return Java_Object_Access is
   begin
        return ContextConfigurationData_Package.getInstance.NAME;
   end getKey;

   --  throws Exception
   function toVector (This : in out ContextConfigurationTableMapping) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        return vector;
   end toVector;

end org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package;


