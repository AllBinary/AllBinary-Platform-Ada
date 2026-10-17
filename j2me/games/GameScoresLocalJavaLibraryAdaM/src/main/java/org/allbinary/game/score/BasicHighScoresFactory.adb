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


   procedure Initialize (This : in out BasicHighScoresFactory'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      softwareInformation : constant SoftwareInformation_Access := SoftwareInformation_Access (softwareInformation_Param);
   begin
      HighScoresBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) return BasicHighScoresFactory_Access is
      This : constant BasicHighScoresFactory_Access := new BasicHighScoresFactory;
   begin
      BasicHighScoresFactory_Package.Initialize (This.all, abeClientInformation_Param, softwareInformation_Param);
      return This;
   end Create;

   procedure fetchHighScores (This : in out BasicHighScoresFactory; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class) is
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      highScoresResultsListener : constant HighScoresResultsListener_Access := HighScoresResultsListener_Access (highScoresResultsListener_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Getting Local HighScores"), BasicHighScoresFactory_Access'(This'Unchecked_Access), This.FETCH);
        This.fetchHighScoresPreload (gameInfo, highScoresResultsListener, True);
   end fetchHighScores;

   procedure fetchHighScoresPreload (This : in out BasicHighScoresFactory; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class; preload : Boolean) is
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      highScoresResultsListener : constant HighScoresResultsListener_Access := HighScoresResultsListener_Access (highScoresResultsListener_Param);
   begin
        begin
            This.highScoresArray (0) := RecordStoreHighScores_Package.getInstance (This.abeClientInformation, gameInfo, This.TOP, This.PERSONAL_HIGH_SCORES, This.SCORES, ScoreComparator_Package.Create (True));
            highScoresResultsListener.setHighScoresArray (This.highScoresArray);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicHighScoresFactory_Access'(This'Unchecked_Access), This.FETCH, e);
                end;
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

   procedure loaded (index2 : Integer) is
      Java_Result : constant Boolean := loaded (index2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loaded;

end org.allbinary.game.score.BasicHighScoresFactory_Package;


