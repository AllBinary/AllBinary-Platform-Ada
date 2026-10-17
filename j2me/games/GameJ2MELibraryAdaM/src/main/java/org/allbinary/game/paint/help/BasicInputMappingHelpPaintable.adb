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


package body org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package is

   procedure Initialize_Fields (This : in out BasicInputMappingHelpPaintable'Class) is
   begin
      null;
      
      This.NONE := GameKeyFactory_Package.getInstance.NONE;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicInputMappingHelpPaintable'Class; gameInputMappingArray : GameInputMapping_Access_Array_Access; basicColor : BasicColor_Access) is
   begin
        HelpPaintable_Package.Initialize (This, To_Unbounded_String ("Help Screen"), BasicColorFactory_Package.getInstance.BLACK, basicColor);
        Initialize_Fields (This);
        This.gameInputMappingArray := gameInputMappingArray;
        This.update (This.NONE, This.NONE);
   end Initialize;

   function Create (gameInputMappingArray : GameInputMapping_Access_Array_Access; basicColor : BasicColor_Access) return BasicInputMappingHelpPaintable_Access is
      This : constant BasicInputMappingHelpPaintable_Access := new BasicInputMappingHelpPaintable;
   begin
      Initialize (This.all, gameInputMappingArray, basicColor);
      return This;
   end Create;

   procedure update (This : in out BasicInputMappingHelpPaintable; selectedGameKey : GameKey_Access; selectedInput : Input_Access) is
      gameKeyMapping : PersistentInputMapping_Access;
      EQUAL : Unbounded_String;
      stringMaker : StringMaker_Access;
      size : Integer;
      keyInfo : Unbounded_String_Array_Access;
      gameInputMapping : GameInputMapping_Access;
      gameKey : GameKey_Access;
      list : BasicArrayList_Access;
      index : Integer;
   begin
        gameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance;
        EQUAL := To_Unbounded_String (" = ");
        stringMaker := StringMaker_Package.Create;
        size := This.gameInputMappingArray'Length;
        keyInfo := new Unbounded_String_Array'(0 .. (size) - 1 => Null_Unbounded_String);
        gameInputMapping := null;
        gameKey := null;
        list := null;
        for index in 0 .. (size) - 1 loop
            gameInputMapping := This.gameInputMappingArray (index);
            gameKey := gameInputMapping.getGameKey;
            list := gameKeyMapping.getInputMapping.getMappedInput (gameKey);
            stringMaker.delete (0, stringMaker.length);
            keyInfo (index) := stringMaker.append (gameInputMapping.getName).append (EQUAL).append (This.get (list)).toString;
        end loop;
        HelpPaintable (This).setInputInfoP (keyInfo);
   end update;

   function get (This : in out BasicInputMappingHelpPaintable; keyList : BasicArrayList_Access) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      stringBuffer : StringMaker_Access;
      AND_Id : Unbounded_String;
      key : Input_Access;
      size : Integer;
      index : Integer;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        AND_Id := To_Unbounded_String ("and ");
        key := null;
        size := keyList.size;
        for index in 0 .. (size) - 1 loop
            key := Input_Access (keyList.objectArray (index));
            stringBuffer.append (key.getName);
            if ((index) + (1)) < (keyList.size) then
                if (keyList.size) = (2) then
                    stringBuffer.append (commonSeps.SPACE).append (AND_Id);
                else
                    if ((index) + (2)) = (keyList.size) then
                        stringBuffer.append (commonSeps.COMMA_SEP);
                        stringBuffer.append (AND_Id);
                    else
                        stringBuffer.append (commonSeps.COMMA_SEP);
                    end if;
                end if;
            end if;
        end loop;
        return stringBuffer.toString;
   end get;

   procedure get (This : in out BasicInputMappingHelpPaintable; keyList : BasicArrayList_Access) is
      Java_Result : constant Unbounded_String := BasicInputMappingHelpPaintable'Class (This).get (keyList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package;


