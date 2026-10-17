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


package body org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package is

   procedure Initialize_Fields (This : in out GameFeatureChoiceGroups'Class) is
   begin
      null;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
   end Initialize_Fields;


   procedure Initialize (This : in out GameFeatureChoiceGroups'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameFeatureChoiceGroups_Access is
      This : constant GameFeatureChoiceGroups_Access := new GameFeatureChoiceGroups;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getExclusiveInstance return GameFeatureChoiceGroups_Access is
   begin
        return GameFeatureChoiceGroups_Package.gameFeatureChoiceGroupsExclusive;
   end getExclusiveInstance;

   function getMultipleInstance return GameFeatureChoiceGroups_Access is
   begin
        return GameFeatureChoiceGroups_Package.gameFeatureChoiceGroupsMultiple;
   end getMultipleInstance;

   function get (This : in out GameFeatureChoiceGroups) return ABHashtable_Access is
   begin
        return This.hashtable;
   end get;

   procedure add (This : in out GameFeatureChoiceGroups; name : Unbounded_String; list : BasicArrayList_Access) is
   begin
        This.hashtable.put (name, list);
   end add;

   procedure getExclusiveInstance is
      Java_Result : constant GameFeatureChoiceGroups_Access := getExclusiveInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExclusiveInstance;

   procedure getMultipleInstance is
      Java_Result : constant GameFeatureChoiceGroups_Access := getMultipleInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMultipleInstance;

   procedure get (This : in out GameFeatureChoiceGroups) is
      Java_Result : constant ABHashtable_Access := GameFeatureChoiceGroups'Class (This).get;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   gameFeatureChoiceGroupsExclusive := GameFeatureChoiceGroups_Package.Create;
   gameFeatureChoiceGroupsMultiple := GameFeatureChoiceGroups_Package.Create;

end org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;


