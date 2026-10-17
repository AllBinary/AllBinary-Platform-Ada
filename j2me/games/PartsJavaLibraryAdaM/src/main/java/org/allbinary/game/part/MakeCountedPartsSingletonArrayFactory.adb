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


package body org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package is

   procedure Initialize_Fields (This : in out MakeCountedPartsSingletonArrayFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.list := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out MakeCountedPartsSingletonArrayFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MakeCountedPartsSingletonArrayFactory_Access is
      This : constant MakeCountedPartsSingletonArrayFactory_Access := new MakeCountedPartsSingletonArrayFactory;
   begin
      MakeCountedPartsSingletonArrayFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MakeCountedPartsSingletonArrayFactory_Access is
   begin
        return MakeCountedPartsSingletonArrayFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getUpdated (This : in out MakeCountedPartsSingletonArrayFactory; partInterfaceArray : PartInterface_Access_Array_Access) return PartInterface_Access_Array_Access is
      index : Integer;
      countedBasicArrayList : BasicArrayList_Access;
      layerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactory_Access;
      size : Integer;
      stringBuffer : StringMaker_Access;
      commonStrings : CommonStrings_Access;
      newPartInterfaceArray : PartInterface_Access_Array_Access;
      newSize : Integer;
   begin
        This.list := BasicArrayListD_Package.Create;
        for index in 0 .. (partInterfaceArray'Length) - 1 loop
            This.list.add (partInterfaceArray (index));
        end loop;
        countedBasicArrayList := CountedPickedUpLayerInterfaceFactoryPool_Package.getInstance.getList;
        layerInterfaceFactoryInterface := null;
        size := countedBasicArrayList.size;
        for index in 0 .. (size) - 1 loop
            layerInterfaceFactoryInterface := CountedPickedUpLayerInterfaceFactory_Access (countedBasicArrayList.objectArray (index));
            This.list.add (CountedLayerInterfaceFactoryPart_Package.Create (0, layerInterfaceFactoryInterface));
        end loop;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Total Parts: "));
        stringBuffer.appendint (This.list.size);
        stringBuffer.append (To_Unbounded_String (" Counted: "));
        stringBuffer.appendint (countedBasicArrayList.size);
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, commonStrings.GET_INSTANCE);
        newPartInterfaceArray := new PartInterface_Access_Array'(0 .. (This.list.size) - 1 => null);
        newSize := newPartInterfaceArray'Length;
        for index in 0 .. (newSize) - 1 loop
            newPartInterfaceArray (index) := PartInterface_Access (This.list.get (index));
        end loop;
        return newPartInterfaceArray;
   end getUpdated;

   procedure getUpdated (This : in out MakeCountedPartsSingletonArrayFactory; partInterfaceArray : PartInterface_Access_Array_Access) is
      Java_Result : constant PartInterface_Access_Array_Access := MakeCountedPartsSingletonArrayFactory'Class (This).getUpdated (partInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUpdated;

begin
   null;
   instance := MakeCountedPartsSingletonArrayFactory_Package.Create;

end org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package;


