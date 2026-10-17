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


package body org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory'Class) is
   begin
      null;
      This.list := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access is
      This : constant ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access := new ArtificialIntelligenceInterfaceFactoryInterfaceFactory;
   begin
      ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   procedure clear (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory) is
   begin
        This.list := BasicArrayListD_Package.Create;
   end clear;

   function getInstance return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access is
   begin
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package.SINGLETON;
   end getInstance;

   function getInstanceFromCollection (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; hashtable : ABHashtable_Access) return ArtificialIntelligenceInterfaceFactoryInterface_Access is
      typeInteger : Integer;
      type_Id : Integer;
      artificialIntelligenceInterfaceFactoryInterface : ArtificialIntelligenceInterfaceFactoryInterface_Access;
   begin
        typeInteger := Integer (hashtable.get (Java_Object_Access (BasicAI_Package.ID)));
        type_Id := typeInteger.intValue;
        artificialIntelligenceInterfaceFactoryInterface := ArtificialIntelligenceInterfaceFactoryInterface_Access (This.list.objectArray ((type_Id) - (1)));
        return artificialIntelligenceInterfaceFactoryInterface;
   end getInstanceFromCollection;

   procedure add (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; artificialIntelligenceInterfaceFactoryInterface : ArtificialIntelligenceInterfaceFactoryInterface_Access) is
   begin
        This.list.add (artificialIntelligenceInterfaceFactoryInterface);
   end add;

   procedure getInstanceFromCollection (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; hashtable : ABHashtable_Access) is
      Java_Result : constant ArtificialIntelligenceInterfaceFactoryInterface_Access := ArtificialIntelligenceInterfaceFactoryInterfaceFactory'Class (This).getInstanceFromCollection (hashtable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceFromCollection;

begin
   null;
   SINGLETON := ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package.Create;

end org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package;


