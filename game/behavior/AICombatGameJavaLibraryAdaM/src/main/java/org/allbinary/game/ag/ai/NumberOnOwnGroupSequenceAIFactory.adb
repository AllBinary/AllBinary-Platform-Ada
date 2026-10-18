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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package; use org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package;
with org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI_Package; use org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI_Package;

package body org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAIFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out NumberOnOwnGroupSequenceAIFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out NumberOnOwnGroupSequenceAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NumberOnOwnGroupSequenceAIFactory_Access is
      This : constant NumberOnOwnGroupSequenceAIFactory_Access := new NumberOnOwnGroupSequenceAIFactory;
   begin
      NumberOnOwnGroupSequenceAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out NumberOnOwnGroupSequenceAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      integerArray : Integer_Array_Access;
      list : BasicArrayList_Access;
      integerCanBeNull : Java_Object_Access;
      index : Integer;
      stringBuffer : StringMaker_Access;
      commonStrings : CommonStrings_Access;
      numberOnSameTeam : Integer_Array_Access;
   begin
        integerArray := NumberInSameGroupSequence_Package.getInstance.NUMBER_ON_SAME_TEAM_SEQUENCE;
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        for index in 0 .. (integerArray'Length) - 1 loop
            integerCanBeNull := hashtable.get (Java_Object_Access (integerArray (index)));
            if (integerCanBeNull) = (null) then
                exit;
            end if;
            list.add (integerCanBeNull);
        end loop;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Total AI Properties: "));
        stringBuffer.appendint (list.size);
        stringBuffer.append (To_Unbounded_String (" == Total AI: "));
        stringBuffer.appendint (artificialIntelligenceInterface'Length);
        stringBuffer.append (To_Unbounded_String (" + 1"));
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (stringBuffer.toString, NumberOnOwnGroupSequenceAIFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        if ((artificialIntelligenceInterface'Length) - (1)) > (list.size) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not enough AI properties.")));
        end if;
        if ((artificialIntelligenceInterface'Length) - (1)) < (list.size) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Too Many AI properties.")));
        end if;
        numberOnSameTeam := new Integer_Array'(0 .. (list.size) - 1 => null);
        for index in 0 .. (numberOnSameTeam'Length) - 1 loop
            numberOnSameTeam (index) := Integer (list.objectArray (index));
        end loop;
        return ArtificialIntelligenceInterface_Access (NumberOnOwnGroupSequenceAI_Package.Create (numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput));
   end getInstance;

   procedure getInstance (This : in out NumberOnOwnGroupSequenceAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := NumberOnOwnGroupSequenceAIFactory'Class (This).getInstance (hashtable_Param, artificialIntelligenceInterface, ownerLayerInterface_Param, gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAIFactory_Package;


