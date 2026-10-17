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


   procedure Initialize (This : in out CommandTextItemArrayFactory'Class; visitorInterface_Param : access Visitor_Package.Visitor'Class) is
      visitorInterface : constant Visitor_Access := Visitor_Access (visitorInterface_Param);
   begin
      Initialize_Fields (This);
        This.visitorInterface := visitorInterface;
   end Initialize;

   function Create (visitorInterface_Param : access Visitor_Package.Visitor'Class) return CommandTextItemArrayFactory_Access is
      This : constant CommandTextItemArrayFactory_Access := new CommandTextItemArrayFactory;
   begin
      CommandTextItemArrayFactory_Package.Initialize (This.all, visitorInterface_Param);
      return This;
   end Create;

   function getInstance (This : in out CommandTextItemArrayFactory; vector_Param : access Java_Object'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomItem_Access_Array_Access is
      vector : constant Java_Object_Access := Java_Object_Access (vector_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
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

   procedure getInstance (This : in out CommandTextItemArrayFactory; vector_Param : access Java_Object'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant ABCustomItem_Access_Array_Access := CommandTextItemArrayFactory'Class (This).getInstance (vector_Param, backgroundBasicColor_Param, foregroundBasicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;


