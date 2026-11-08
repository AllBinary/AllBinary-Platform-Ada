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


with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package; use org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
with org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
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
        This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end clear;

   function getInstance return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access is
   begin
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access (ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package.SINGLETON);
   end getInstance;

   function getInstanceFromCollection (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return ArtificialIntelligenceInterfaceFactoryInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      typeInteger : Integer;
      type_Id : Integer;
      artificialIntelligenceInterfaceFactoryInterface : ArtificialIntelligenceInterfaceFactoryInterface_Access;
   begin
        typeInteger := Java_Unbox_Integer (hashtable.get (Java_Object_Access (BasicAI_Package.ID)));
        type_Id := Integer (typeInteger);
        artificialIntelligenceInterfaceFactoryInterface := ArtificialIntelligenceInterfaceFactoryInterface_Access (This.list.objectArray ((type_Id) - (1)));
        return artificialIntelligenceInterfaceFactoryInterface;
   end getInstanceFromCollection;

   procedure add (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; artificialIntelligenceInterfaceFactoryInterface_Param : access ArtificialIntelligenceInterfaceFactoryInterface_Package.ArtificialIntelligenceInterfaceFactoryInterface'Class) is
      artificialIntelligenceInterfaceFactoryInterface : constant ArtificialIntelligenceInterfaceFactoryInterface_Access := ArtificialIntelligenceInterfaceFactoryInterface_Access (artificialIntelligenceInterfaceFactoryInterface_Param);
   begin
        This.list.add (ArtificialIntelligenceInterfaceFactoryInterface_Package.Java_Object_Access_From_ArtificialIntelligenceInterfaceFactoryInterface (artificialIntelligenceInterfaceFactoryInterface));
   end add;

   procedure getInstanceFromCollection (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      Java_Result : constant ArtificialIntelligenceInterfaceFactoryInterface_Access := ArtificialIntelligenceInterfaceFactoryInterfaceFactory'Class (This).getInstanceFromCollection (hashtable_Param => hashtable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceFromCollection;

begin
   null;
   SINGLETON := ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package.Create;

end org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package;


