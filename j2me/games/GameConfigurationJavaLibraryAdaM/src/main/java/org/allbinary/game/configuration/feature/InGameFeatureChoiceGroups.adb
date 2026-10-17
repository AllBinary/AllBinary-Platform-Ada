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


package body org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package is

   procedure Initialize_Fields (This : in out InGameFeatureChoiceGroups'Class) is
   begin
      null;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
   end Initialize_Fields;


   procedure Initialize (This : in out InGameFeatureChoiceGroups'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InGameFeatureChoiceGroups_Access is
      This : constant InGameFeatureChoiceGroups_Access := new InGameFeatureChoiceGroups;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getExclusiveInstance return InGameFeatureChoiceGroups_Access is
   begin
        return InGameFeatureChoiceGroups_Package.gameFeatureChoiceGroupsExclusive;
   end getExclusiveInstance;

   function getMultipleInstance return InGameFeatureChoiceGroups_Access is
   begin
        return InGameFeatureChoiceGroups_Package.gameFeatureChoiceGroupsMultiple;
   end getMultipleInstance;

   function get (This : in out InGameFeatureChoiceGroups) return ABHashtable_Access is
   begin
        return This.hashtable;
   end get;

   procedure add (This : in out InGameFeatureChoiceGroups; name : Unbounded_String; list : BasicArrayList_Access) is
   begin
        This.hashtable.put (name, list);
   end add;

   procedure getExclusiveInstance is
      Java_Result : constant InGameFeatureChoiceGroups_Access := getExclusiveInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExclusiveInstance;

   procedure getMultipleInstance is
      Java_Result : constant InGameFeatureChoiceGroups_Access := getMultipleInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMultipleInstance;

   procedure get (This : in out InGameFeatureChoiceGroups) is
      Java_Result : constant ABHashtable_Access := InGameFeatureChoiceGroups'Class (This).get;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   gameFeatureChoiceGroupsExclusive := InGameFeatureChoiceGroups_Package.Create;
   gameFeatureChoiceGroupsMultiple := InGameFeatureChoiceGroups_Package.Create;

end org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;


