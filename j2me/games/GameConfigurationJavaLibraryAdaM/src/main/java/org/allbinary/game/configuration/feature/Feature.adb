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


package body org.allbinary.game.configuration.feature.Feature_Package is

   procedure Initialize_Fields (This : in out Feature'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Feature'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        Feature_Package.add (name, Feature_Access'(This'Unchecked_Access));
        ChangedGameFeatureListener_Package.getInstance.add (Feature_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (name : Unbounded_String) return Feature_Access is
      This : constant Feature_Access := new Feature;
   begin
      Feature_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getInstance (name : Unbounded_String) return Feature_Access is
   begin
        return Feature_Access (Feature_Package.hashtable.get (name));
   end getInstance;

   procedure add (name : Unbounded_String; gameFeature_Param : access Feature_Package.Feature'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
   begin
        Feature_Package.hashtable.put (name, gameFeature);
   end add;

   function toString (This : in out Feature) return Unbounded_String is
   begin
        return This.getName;
   end toString;

   function getName (This : in out Feature) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure getInstance (name : Unbounded_String) is
      Java_Result : constant Feature_Access := getInstance (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   hashtable := StdUtil_Package.getInstance.createHashtable;

end org.allbinary.game.configuration.feature.Feature_Package;


