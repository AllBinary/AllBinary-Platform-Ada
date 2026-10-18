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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.configuration.GameConfigurationSingleton_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out GameConfigurationSingleton'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   function getInstance return GameConfigurationSingleton_Access is
   begin
        return GameConfigurationSingleton_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out GameConfigurationSingleton'Class) is
   begin
      Initialize_Fields (This);
        This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.hashtable := StdUtil_Package.getInstance.createHashtable;
   end Initialize;

   function Create return GameConfigurationSingleton_Access is
      This : constant GameConfigurationSingleton_Access := new GameConfigurationSingleton;
   begin
      GameConfigurationSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstanceByName (This : in out GameConfigurationSingleton; name : Unbounded_String) return GameConfiguration_Access is
   begin
        return GameConfiguration_Access (This.hashtable.get (name));
   end getInstanceByName;

   function getOptionsBasicArrayList (This : in out GameConfigurationSingleton) return BasicArrayList_Access is
   begin
        return This.list;
   end getOptionsBasicArrayList;

   procedure add (This : in out GameConfigurationSingleton; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) is
      gameConfiguration : constant GameConfiguration_Access := GameConfiguration_Access (gameConfiguration_Param);
   begin
        This.list.add (Java_Object_Access (gameConfiguration));
   end add;

   function getHashtable (This : in out GameConfigurationSingleton) return ABHashtable_Access is
   begin
        return This.hashtable;
   end getHashtable;

   procedure getInstanceByName (This : in out GameConfigurationSingleton; name : Unbounded_String) is
      Java_Result : constant GameConfiguration_Access := GameConfigurationSingleton'Class (This).getInstanceByName (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceByName;

begin
   null;
   SINGLETON := GameConfigurationSingleton_Package.Create;

end org.allbinary.game.configuration.GameConfigurationSingleton_Package;


