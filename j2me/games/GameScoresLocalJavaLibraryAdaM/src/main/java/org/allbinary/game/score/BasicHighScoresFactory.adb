--  Generated Code Do Not Modify


package body org.allbinary.game.score.BasicHighScoresFactory_Package is

   procedure Initialize_Fields (This : in out BasicHighScoresFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.highScoresArray := new HighScores_Access_Array'(0 .. (1) - 1 => null);
      This.TOP := To_Unbounded_String ("Top");
      This.SCORES := To_Unbounded_String ("Scores");
      This.PERSONAL_HIGH_SCORES := To_Unbounded_String ("Personal Top Scores");
      This.FETCH := To_Unbounded_String ("fetchHighScores");
   end Initialize_Fields;


   procedure Initialize (This : in out BasicHighScoresFactory'Class; abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access) is
   begin
      HighScoresBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; softwareInformation : SoftwareInformation_Access) return BasicHighScoresFactory_Access is
      This : constant BasicHighScoresFactory_Access := new BasicHighScoresFactory;
   begin
      Initialize (This.all, abeClientInformation, softwareInformation);
      return This;
   end Create;

   procedure fetchHighScores (This : in out BasicHighScoresFactory; gameInfo : GameInfo_Access; highScoresResultsListener : HighScoresResultsListener_Access) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Getting Local HighScores"), This'Unchecked_Access, This.FETCH);
        This.fetchHighScoresPreload (gameInfo, highScoresResultsListener, True);
   end fetchHighScores;

   procedure fetchHighScoresPreload (This : in out BasicHighScoresFactory; gameInfo : GameInfo_Access; highScoresResultsListener : HighScoresResultsListener_Access; preload : Boolean) is
   begin
        begin
            This.highScoresArray (0) := RecordStoreHighScores_Package.getInstance (This.abeClientInformation, gameInfo, This.TOP, This.PERSONAL_HIGH_SCORES, This.SCORES, ScoreComparator_Package.Create (True));
            highScoresResultsListener.setHighScoresArray (This.highScoresArray);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.FETCH, e);
        end;
   end fetchHighScoresPreload;

   function createHighScoresHelper (This : in out BasicHighScoresFactory) return HighScoresHelperBaseInterface_Access is
   begin
        return HighScoresHelper2_Package.Create;
   end createHighScoresHelper;

   function loaded (index2 : Integer) return Boolean is
   begin
        if (index2) >= (0) then
            return True;
        end if;
        return False;
   end loaded;

   procedure createHighScoresHelper (This : in out BasicHighScoresFactory) is
      Java_Result : constant HighScoresHelperBaseInterface_Access := BasicHighScoresFactory'Class (This).createHighScoresHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHighScoresHelper;

   procedure loaded (index2 : Integer) is
      Java_Result : constant Boolean := loaded (index2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loaded;

end org.allbinary.game.score.BasicHighScoresFactory_Package;


