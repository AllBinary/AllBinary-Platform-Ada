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


package body org.allbinary.game.score.ScoreComparator_Package is

   procedure Initialize_Fields (This : in out ScoreComparator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ScoreComparator'Class; isHighestBest : Boolean) is
   begin
      Initialize_Fields (This);
        This.isHighestBest := isHighestBest;
   end Initialize;

   function Create (isHighestBest : Boolean) return ScoreComparator_Access is
      This : constant ScoreComparator_Access := new ScoreComparator;
   begin
      ScoreComparator_Package.Initialize (This.all, isHighestBest);
      return This;
   end Create;

   function getBestScore (This : in out ScoreComparator) return Long_Long_Integer is
   begin
        return (if This.isHighestBest then Long_Package.MAX_VALUE else 0);
   end getBestScore;

   function compare (This : in out ScoreComparator; recordOne : Short_Short_Integer_Array_Access; recordTwo : Short_Short_Integer_Array_Access) return Integer is
      byteArrayInputStreamOne : ByteArrayInputStream_Access;
      inputStreamOne : DataInputStream_Access;
      byteArrayInputStreamTwo : ByteArrayInputStream_Access;
      inputStreamTwo : DataInputStream_Access;
      scoreOne : Long_Long_Integer;
      scoreTwo : Long_Long_Integer;
      commonStrings : CommonStrings_Access;
   begin
        byteArrayInputStreamOne := ByteArrayInputStream_Package.Create (recordOne);
        inputStreamOne := DataInputStream_Package.Create (byteArrayInputStreamOne);
        byteArrayInputStreamTwo := ByteArrayInputStream_Package.Create (recordTwo);
        inputStreamTwo := DataInputStream_Package.Create (byteArrayInputStreamTwo);
        scoreOne := 0;
        scoreTwo := 0;
        begin
            inputStreamOne.readUTF;
            inputStreamTwo.readUTF;
            scoreOne := inputStreamOne.readLong;
            scoreTwo := inputStreamTwo.readLong;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, ScoreComparator_Access'(This'Unchecked_Access), To_Unbounded_String ("compare"), e);
                end;
        end;
        if This.isHighestBest then
            return This.getHighTooLow (scoreOne, scoreTwo);
        else
            return This.getLowTooHigh (scoreOne, scoreTwo);
        end if;
   end compare;

   function getHighTooLow (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer) return Integer is
   begin
        if (scoreOne) > (scoreTwo) then
            return RecordComparator_Package.PRECEDES;
        elsif (scoreOne) < (scoreTwo) then
            return RecordComparator_Package.FOLLOWS;
        else
            return RecordComparator_Package.EQUIVALENT;
        end if;
   end getHighTooLow;

   function getLowTooHigh (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer) return Integer is
   begin
        if (scoreOne) < (scoreTwo) then
            return RecordComparator_Package.PRECEDES;
        elsif (scoreOne) > (scoreTwo) then
            return RecordComparator_Package.FOLLOWS;
        else
            return RecordComparator_Package.EQUIVALENT;
        end if;
   end getLowTooHigh;

   procedure compare (This : in out ScoreComparator; recordOne : Short_Short_Integer_Array_Access; recordTwo : Short_Short_Integer_Array_Access) is
      Java_Result : constant Integer := ScoreComparator'Class (This).compare (recordOne, recordTwo);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compare;

   procedure getHighTooLow (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer) is
      Java_Result : constant Integer := ScoreComparator'Class (This).getHighTooLow (scoreOne, scoreTwo);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHighTooLow;

   procedure getLowTooHigh (This : in out ScoreComparator; scoreOne : Long_Long_Integer; scoreTwo : Long_Long_Integer) is
      Java_Result : constant Integer := ScoreComparator'Class (This).getLowTooHigh (scoreOne, scoreTwo);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLowTooHigh;

end org.allbinary.game.score.ScoreComparator_Package;


