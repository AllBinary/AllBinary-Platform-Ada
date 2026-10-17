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


package body org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package is

   procedure Initialize_Fields (This : in out NumberInSameGroupSequence'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   function getInstance return NumberInSameGroupSequence_Access is
   begin
        return NumberInSameGroupSequence_Package.Create;
   end getInstance;

   procedure Initialize (This : in out NumberInSameGroupSequence'Class) is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
   begin
      Initialize_Fields (This);
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO := smallIntegerSingletonFactory.getAt (100);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE := smallIntegerSingletonFactory.getAt (101);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_TWO := smallIntegerSingletonFactory.getAt (102);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE := smallIntegerSingletonFactory.getAt (103);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR := smallIntegerSingletonFactory.getAt (104);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE := smallIntegerSingletonFactory.getAt (105);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX := smallIntegerSingletonFactory.getAt (106);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN := smallIntegerSingletonFactory.getAt (107);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT := smallIntegerSingletonFactory.getAt (108);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE := smallIntegerSingletonFactory.getAt (109);
        This.NUMBER_ON_SAME_TEAM_SEQUENCE := new Integer_Array'(This.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, This.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, This.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, This.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, This.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, This.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, This.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, This.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, This.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE);
   end Initialize;

   function Create return NumberInSameGroupSequence_Access is
      This : constant NumberInSameGroupSequence_Access := new NumberInSameGroupSequence;
   begin
      NumberInSameGroupSequence_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package;


