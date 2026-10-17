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


package body org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package is

   procedure Initialize_Fields (This : in out CommandTextItemArrayFactory'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CommandTextItemArrayFactory'Class; visitorInterface : Visitor_Access) is
   begin
      Initialize_Fields (This);
        This.visitorInterface := visitorInterface;
   end Initialize;

   function Create (visitorInterface : Visitor_Access) return CommandTextItemArrayFactory_Access is
      This : constant CommandTextItemArrayFactory_Access := new CommandTextItemArrayFactory;
   begin
      Initialize (This.all, visitorInterface);
      return This;
   end Create;

   function getInstance (This : in out CommandTextItemArrayFactory; vector : Java_Object_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABCustomItem_Access_Array_Access is
      vectorUtil : VectorUtil_Access;
      size : Integer;
      textItem : CommandTextItem_Access;
      priorityLimit : Integer;
      displayInfo : DisplayInfoSingleton_Access;
      isLargeEnoughDisplayForBigMenu : Boolean;
      command : Command_Access;
      aBoolean : Boolean;
      index : Integer;
      textItemArray : ABCustomItem_Access_Array_Access;
      size2 : Integer;
   begin
        vectorUtil := VectorUtil_Package.getInstance;
        size := vectorUtil.getSize (vector);
        This.list.clear;
        textItem := null;
        priorityLimit := 7;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        isLargeEnoughDisplayForBigMenu := (((displayInfo.isPortrait) and then ((displayInfo.getLastHeight) >= (ScreenInfo_Package.getInstance.MEDIUM_WIDTH)))) or else (((not (displayInfo.isPortrait)) and then ((displayInfo.getLastWidth) >= (ScreenInfo_Package.getInstance.MEDIUM_WIDTH))));
        if (not (isLargeEnoughDisplayForBigMenu)) and then ((size) > (3)) then
            priorityLimit := 3;
        end if;
        command := null;
        for index in 0 .. (size) - 1 loop
            command := Command_Access (vectorUtil.elementAt (vector, index));
            if (command.getPriority) < (priorityLimit) then
                aBoolean := Boolean (This.visitorInterface.visit (command));
                if aBoolean.booleanValue then
                    textItem := CommandTextItem_Package.Create (command, ImageItem_Package.LAYOUT_DEFAULT, StringUtil_Package.getInstance.EMPTY_STRING, backgroundBasicColor, foregroundBasicColor);
                    This.list.add (textItem);
                end if;
            end if;
        end loop;
        textItemArray := new ABCustomItem_Access_Array'(0 .. (This.list.size) - 1 => null);
        size2 := textItemArray'Length;
        for index in 0 .. (size2) - 1 loop
            textItemArray (index) := ABCustomItem_Access (This.list.objectArray (index));
        end loop;
        return textItemArray;
   end getInstance;

   procedure getInstance (This : in out CommandTextItemArrayFactory; vector : Java_Object_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      Java_Result : constant ABCustomItem_Access_Array_Access := CommandTextItemArrayFactory'Class (This).getInstance (vector, backgroundBasicColor, foregroundBasicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;


