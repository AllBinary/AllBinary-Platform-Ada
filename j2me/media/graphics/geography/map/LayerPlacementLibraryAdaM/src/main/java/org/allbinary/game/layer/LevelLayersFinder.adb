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


package body org.allbinary.game.layer.LevelLayersFinder_Package is

   procedure Initialize_Fields (This : in out LevelLayersFinder'Class) is
   begin
      null;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out LevelLayersFinder'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LevelLayersFinder_Access is
      This : constant LevelLayersFinder_Access := new LevelLayersFinder;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return LevelLayersFinder_Access is
   begin
        return LevelLayersFinder_Package.instance;
   end getInstance;

   function get (This : in out LevelLayersFinder; hashtable : ABHashtable_Access) return BasicArrayList_Access is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      list : BasicArrayList_Access;
      enumeration : Enumeration_Access;
      layerHashtableCanBeNull : ABHashtable_Access;
      integerCanBeNull : Integer;
      cachedIntegerCanBeNull : Integer;
   begin
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        list := BasicArrayListD_Package.Create;
        enumeration := hashtable.keys;
        layerHashtableCanBeNull := null;
        integerCanBeNull := null;
        cachedIntegerCanBeNull := null;
        while This.enumerationUtil.hasMoreElements (enumeration) loop
            layerHashtableCanBeNull := ABHashtable_Access (hashtable.get (Java_Object_Access (This.enumerationUtil.nextElement (enumeration))));
            integerCanBeNull := Integer (layerHashtableCanBeNull.get (Java_Object_Access (Layer_Package.ID)));
            cachedIntegerCanBeNull := smallIntegerSingletonFactory.getAt (integerCanBeNull.intValue);
            if not (list.contains (cachedIntegerCanBeNull)) then
                list.add (cachedIntegerCanBeNull);
            end if;
        end loop;
        return list;
   end get;

   procedure getInstance is
      Java_Result : constant LevelLayersFinder_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure get (This : in out LevelLayersFinder; hashtable : ABHashtable_Access) is
      Java_Result : constant BasicArrayList_Access := LevelLayersFinder'Class (This).get (hashtable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := LevelLayersFinder_Package.Create;

end org.allbinary.game.layer.LevelLayersFinder_Package;


