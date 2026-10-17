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


package body org.allbinary.game.score.HighScore_Package is

   procedure Initialize_Fields (This : in out HighScore'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HighScore'Class; id : Integer; name : Unbounded_String; gameInfo : GameInfo_Access; score : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.id := id;
        This.name := name;
        This.gameInfo := gameInfo;
        This.score := score;
        This.scoreString := To_Unbounded_String (Java_Image (This.score));
   end Initialize;

   function Create (id : Integer; name : Unbounded_String; gameInfo : GameInfo_Access; score : Long_Long_Integer) return HighScore_Access is
      This : constant HighScore_Access := new HighScore;
   begin
      HighScore_Package.Initialize (This.all, id, name, gameInfo, score);
      return This;
   end Create;

   function getId (This : in out HighScore) return Integer is
   begin
        return This.id;
   end getId;

   function getName (This : in out HighScore) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getScore (This : in out HighScore) return Long_Long_Integer is
   begin
        return This.score;
   end getScore;

   --  throws Exception
   function getAsBytes (This : in out HighScore) return Short_Short_Integer_Array_Access is
      byteArrayOutputStream : ByteArrayOutputStream_Access;
      outputStream : DataOutputStream_Access;
   begin
        byteArrayOutputStream := ByteArrayOutputStream_Package.Create;
        outputStream := DataOutputStream_Package.Create (byteArrayOutputStream);
        outputStream.writeUTF (This.getName);
        outputStream.writeLong (This.getScore);
        return byteArrayOutputStream.toByteArray;
   end getAsBytes;

   function getGameInfo (This : in out HighScore) return GameInfo_Access is
   begin
        return This.gameInfo;
   end getGameInfo;

   function getScoreString (This : in out HighScore) return Unbounded_String is
   begin
        return This.scoreString;
   end getScoreString;

   procedure setName (This : in out HighScore; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function toString (This : in out HighScore) return Unbounded_String is
      commonSeps : CommonSeps_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        return StringMaker_Package.Create.append (This.name).append (commonSeps.COLON).appendlong (This.score).append (commonSeps.FORWARD_SLASH).append (This.scoreString).toString;
   end toString;

end org.allbinary.game.score.HighScore_Package;


