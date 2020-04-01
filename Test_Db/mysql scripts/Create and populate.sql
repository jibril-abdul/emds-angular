CREATE SCHEMA assessment;
drop table if exists `xmlhtmltable`;

CREATE TABLE if not exists `xmlhtmltable` (
  `UID` varchar(36) NOT NULL,
  `Name` mediumtext NOT NULL,
  `XMLData` longtext,
  `HTMLData` longtext,
  `JSONData` json DEFAULT NULL,
  PRIMARY KEY (`UID`)
);

describe xmlhtmltable;

insert into `xmlhtmltable` (
`uid`, `name`, `xmldata`)
select uuid(), 'BH_Progress_Assessment',
'<Viklele.FormDesigner Version="1.1">
  <Object type="Viklele.Win.Designer.FormDesigner, Viklele.Win.FormDesigner, Version=2.1.5233.21178, Culture=neutral, PublicKeyToken=77e8bf69d2939464" name="formDesigner" ObservationTypeUid="00000000-0000-0000-0000-000000000000">
    <Property name="ErrorCaption">Form Designer</Property>
    <Property name="AutoAlignAid">SnapToGrid</Property>
    <Property name="DesignerContextMenu">True</Property>
    <Property name="AutoScroll">True</Property>
    <Property name="AutoScrollMargin">0, 0</Property>
    <Property name="AutoScrollMinSize">0, 0</Property>
    <Property name="AccessibleDescription" />
    <Property name="AccessibleName" />
    <Property name="AccessibleRole">Default</Property>
    <Property name="AllowDrop">False</Property>
    <Property name="AutoScrollOffset">0, 0</Property>
    <Property name="BackColor">Control</Property>
    <Property name="BackgroundImageLayout">Tile</Property>
    <Property name="CausesValidation">True</Property>
    <Property name="ContextMenu" />
    <Property name="ContextMenuStrip" />
    <Property name="Controls">
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmGroupBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmGroupBox6">
        <Property name="TabStop">False</Property>
        <Property name="Text">Specific therapeutic interventions targeting the above mentioned issues and treatment objectives</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="Controls">
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmTextBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmTextBox5">
            <Property name="Name">PrmTextBox5</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">112, 584</Property>
            <Property name="Size">912, 27</Property>
            <Property name="TabIndex">18</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel9">
            <Property name="TextAlign">MiddleLeft</Property>
            <Property name="Text">Other:</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 584</Property>
            <Property name="Name">PrmLabel9</Property>
            <Property name="Size">100, 20</Property>
            <Property name="TabIndex">17</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox23">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Symptom management /skill building</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 544</Property>
            <Property name="Name">PrmCheckBox23</Property>
            <Property name="Size">248, 20</Property>
            <Property name="TabIndex">16</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox22">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Supportive</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 512</Property>
            <Property name="Name">PrmCheckBox22</Property>
            <Property name="Size">104, 20</Property>
            <Property name="TabIndex">15</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox21">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Stress management techniques</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 480</Property>
            <Property name="Name">PrmCheckBox21</Property>
            <Property name="Size">200, 20</Property>
            <Property name="TabIndex">14</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox20">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Referral to collateral support</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 448</Property>
            <Property name="Name">PrmCheckBox20</Property>
            <Property name="Size">200, 20</Property>
            <Property name="TabIndex">13</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox19">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Psycho-educational</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 416</Property>
            <Property name="Name">PrmCheckBox19</Property>
            <Property name="Size">176, 20</Property>
            <Property name="TabIndex">12</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox18">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Positive reinforcement for appropriate behavior</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 384</Property>
            <Property name="Name">PrmCheckBox18</Property>
            <Property name="Size">272, 20</Property>
            <Property name="TabIndex">11</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox17">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Play therapy</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 352</Property>
            <Property name="Name">PrmCheckBox17</Property>
            <Property name="Size">104, 20</Property>
            <Property name="TabIndex">10</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox16">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Peer relationships</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 320</Property>
            <Property name="Name">PrmCheckBox16</Property>
            <Property name="Size">160, 20</Property>
            <Property name="TabIndex">9</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox15">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Parenting skills</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 288</Property>
            <Property name="Name">PrmCheckBox15</Property>
            <Property name="Size">104, 20</Property>
            <Property name="TabIndex">8</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox14">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Identifying relapse triggers</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 256</Property>
            <Property name="Name">PrmCheckBox14</Property>
            <Property name="Size">240, 20</Property>
            <Property name="TabIndex">7</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox13">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Focused dynamic</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 224</Property>
            <Property name="Name">PrmCheckBox13</Property>
            <Property name="Size">200, 20</Property>
            <Property name="TabIndex">6</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox12">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Enhancement of communication skills</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 192</Property>
            <Property name="Name">PrmCheckBox12</Property>
            <Property name="Size">280, 20</Property>
            <Property name="TabIndex">5</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox11">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Encouragement to participate in group process</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 160</Property>
            <Property name="Name">PrmCheckBox11</Property>
            <Property name="Size">296, 20</Property>
            <Property name="TabIndex">4</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox10">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Encourage decrease in or elimination of denial</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 128</Property>
            <Property name="Name">PrmCheckBox10</Property>
            <Property name="Size">320, 20</Property>
            <Property name="TabIndex">3</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox9">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Cognitive behavioral</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 96</Property>
            <Property name="Name">PrmCheckBox9</Property>
            <Property name="Size">288, 20</Property>
            <Property name="TabIndex">2</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox8">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Assist with problem solving</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 64</Property>
            <Property name="Name">PrmCheckBox8</Property>
            <Property name="Size">344, 20</Property>
            <Property name="TabIndex">1</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox7">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Assertive and interactive skill training</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 32</Property>
            <Property name="Name">PrmCheckBox7</Property>
            <Property name="Size">616, 20</Property>
            <Property name="TabIndex">0</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
        </Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">912, 16</Property>
        <Property name="Name">PrmGroupBox6</Property>
        <Property name="Size">1080, 648</Property>
        <Property name="TabIndex">12</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmGroupBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmGroupBox7">
        <Property name="TabStop">False</Property>
        <Property name="Text">Comments</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="Controls">
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmTextBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmTextBox6">
            <Property name="Name">PrmTextBox6</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 72</Property>
            <Property name="Size">1032, 40</Property>
            <Property name="TabIndex">1</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel10">
            <Property name="TextAlign">MiddleLeft</Property>
            <Property name="Text">(Include evaluation of progress towards measureable objectives and specify and positive or negative changes in relationhips, work or school.)</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 32</Property>
            <Property name="Name">PrmLabel10</Property>
            <Property name="Size">592, 20</Property>
            <Property name="TabIndex">0</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
        </Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">912, 680</Property>
        <Property name="Name">PrmGroupBox7</Property>
        <Property name="Size">1080, 136</Property>
        <Property name="TabIndex">11</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmGroupBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmGroupBox1">
        <Property name="TabStop">False</Property>
        <Property name="Text">Direct Service</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="Controls">
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton5">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">Crisis Intervention</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">336, 32</Property>
            <Property name="Name">PrmRadioButton5</Property>
            <Property name="Size">120, 24</Property>
            <Property name="TabIndex">4</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton4">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">Family Consult</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">240, 32</Property>
            <Property name="Name">PrmRadioButton4</Property>
            <Property name="Size">104, 24</Property>
            <Property name="TabIndex">3</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton3">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">Group</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">184, 32</Property>
            <Property name="Name">PrmRadioButton3</Property>
            <Property name="Size">104, 24</Property>
            <Property name="TabIndex">2</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton2">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">Family/Couple</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">88, 32</Property>
            <Property name="Name">PrmRadioButton2</Property>
            <Property name="Size">104, 24</Property>
            <Property name="TabIndex">1</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton1">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">Individual</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 32</Property>
            <Property name="Name">PrmRadioButton1</Property>
            <Property name="Size">80, 24</Property>
            <Property name="TabIndex">0</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
        </Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Font">Microsoft Sans Serif, 8.25pt</Property>
        <Property name="Location">16, 8</Property>
        <Property name="Name">PrmGroupBox1</Property>
        <Property name="Size">456, 80</Property>
        <Property name="TabIndex">1</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmGroupBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmGroupBox5">
        <Property name="TabStop">False</Property>
        <Property name="Text">Treatment is necessary to</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="Controls">
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox6">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Maintain or improve current level of functioning</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 96</Property>
            <Property name="Name">PrmCheckBox6</Property>
            <Property name="Size">272, 20</Property>
            <Property name="TabIndex">2</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox5">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Reduce harm to self or others</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 64</Property>
            <Property name="Name">PrmCheckBox5</Property>
            <Property name="Size">312, 20</Property>
            <Property name="TabIndex">1</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox4">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Reduce risk of client needing a more intensive level of care (e.g. hospitalization, relapse.)</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 32</Property>
            <Property name="Name">PrmCheckBox4</Property>
            <Property name="Size">472, 20</Property>
            <Property name="TabIndex">0</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
        </Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">32, 728</Property>
        <Property name="Name">PrmGroupBox5</Property>
        <Property name="Size">680, 128</Property>
        <Property name="TabIndex">9</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmGroupBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmGroupBox4">
        <Property name="TabStop">False</Property>
        <Property name="Text">Change in stressors and/or supports of progress</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="Controls">
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmTextBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmTextBox4">
            <Property name="Name">PrmTextBox4</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">144, 112</Property>
            <Property name="Size">520, 27</Property>
            <Property name="TabIndex">3</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel8">
            <Property name="TextAlign">MiddleLeft</Property>
            <Property name="Text">If change, describe:</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 112</Property>
            <Property name="Name">PrmLabel8</Property>
            <Property name="Size">112, 20</Property>
            <Property name="TabIndex">2</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton14">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">New stresssors and/or support</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 72</Property>
            <Property name="Name">PrmRadioButton14</Property>
            <Property name="Size">200, 24</Property>
            <Property name="TabIndex">1</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton13">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">No change</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">16, 32</Property>
            <Property name="Name">PrmRadioButton13</Property>
            <Property name="Size">184, 24</Property>
            <Property name="TabIndex">0</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
        </Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">32, 568</Property>
        <Property name="Name">PrmGroupBox4</Property>
        <Property name="Size">680, 152</Property>
        <Property name="TabIndex">8</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmGroupBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmGroupBox3">
        <Property name="TabStop">False</Property>
        <Property name="Text">Change in mental status</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="Controls">
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton12">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">No</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">192, 176</Property>
            <Property name="Name">PrmRadioButton12</Property>
            <Property name="Size">48, 24</Property>
            <Property name="TabIndex">10</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton11">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">Yes</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">136, 176</Property>
            <Property name="Name">PrmRadioButton11</Property>
            <Property name="Size">48, 24</Property>
            <Property name="TabIndex">9</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton10">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">No</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">184, 136</Property>
            <Property name="Name">PrmRadioButton10</Property>
            <Property name="Size">56, 16</Property>
            <Property name="TabIndex">8</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton9">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">Yes</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">128, 136</Property>
            <Property name="Name">PrmRadioButton9</Property>
            <Property name="Size">80, 16</Property>
            <Property name="TabIndex">7</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel7">
            <Property name="TextAlign">MiddleLeft</Property>
            <Property name="Text">Homicidal Ideation:</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 176</Property>
            <Property name="Name">PrmLabel7</Property>
            <Property name="Size">120, 20</Property>
            <Property name="TabIndex">6</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel6">
            <Property name="TextAlign">MiddleLeft</Property>
            <Property name="Text">Suicidal Ideation:</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 136</Property>
            <Property name="Name">PrmLabel6</Property>
            <Property name="Size">100, 20</Property>
            <Property name="TabIndex">5</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmTextBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmTextBox3">
            <Property name="Name">PrmTextBox3</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">136, 72</Property>
            <Property name="Size">536, 40</Property>
            <Property name="TabIndex">4</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel5">
            <Property name="TextAlign">MiddleLeft</Property>
            <Property name="Text">If change, describe:</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 72</Property>
            <Property name="Name">PrmLabel5</Property>
            <Property name="Size">104, 20</Property>
            <Property name="TabIndex">3</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox3">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Change in thought process/content</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">328, 32</Property>
            <Property name="Name">PrmCheckBox3</Property>
            <Property name="Size">208, 20</Property>
            <Property name="TabIndex">2</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox2">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">Change in mood/affect</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">160, 32</Property>
            <Property name="Name">PrmCheckBox2</Property>
            <Property name="Size">144, 20</Property>
            <Property name="TabIndex">1</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmCheckBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmCheckBox1">
            <Property name="FlatStyle">Standard</Property>
            <Property name="Text">No change</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">24, 32</Property>
            <Property name="Name">PrmCheckBox1</Property>
            <Property name="Size">104, 20</Property>
            <Property name="TabIndex">0</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
        </Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">32, 328</Property>
        <Property name="Name">PrmGroupBox3</Property>
        <Property name="Size">680, 224</Property>
        <Property name="TabIndex">7</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel4">
        <Property name="TextAlign">MiddleLeft</Property>
        <Property name="Text">* Mental Status Exam</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">600, 288</Property>
        <Property name="Name">PrmLabel4</Property>
        <Property name="Size">136, 20</Property>
        <Property name="TabIndex">6</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmTextBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmTextBox2">
        <Property name="Name">PrmTextBox2</Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">72, 272</Property>
        <Property name="Size">216, 27</Property>
        <Property name="TabIndex">5</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel3">
        <Property name="TextAlign">MiddleLeft</Property>
        <Property name="Text">Contact:</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">16, 272</Property>
        <Property name="Name">PrmLabel3</Property>
        <Property name="Size">56, 20</Property>
        <Property name="TabIndex">4</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel2">
        <Property name="TextAlign">MiddleLeft</Property>
        <Property name="Text">Collateral case consult </Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">16, 240</Property>
        <Property name="Name">PrmLabel2</Property>
        <Property name="Size">128, 20</Property>
        <Property name="TabIndex">3</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
      <Object type="iMedica.Prm.Client.UI.BaseControls.PrmGroupBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmGroupBox2">
        <Property name="TabStop">False</Property>
        <Property name="Text">Individual(s) present</Property>
        <Property name="UseCompatibleTextRendering">True</Property>
        <Property name="Controls">
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton8">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">75-80 min</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">248, 72</Property>
            <Property name="Name">PrmRadioButton8</Property>
            <Property name="Size">104, 24</Property>
            <Property name="TabIndex">4</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton7">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">45-50 min</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">176, 72</Property>
            <Property name="Name">PrmRadioButton7</Property>
            <Property name="Size">88, 24</Property>
            <Property name="TabIndex">3</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmRadioButton, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmRadioButton6">
            <Property name="AutoUseParentDataObject">False</Property>
            <Property name="TabStop">True</Property>
            <Property name="Text">20-30 min</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="UseVisualStyleBackColor">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">104, 72</Property>
            <Property name="Name">PrmRadioButton6</Property>
            <Property name="Size">88, 24</Property>
            <Property name="TabIndex">2</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmLabel, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmLabel1">
            <Property name="TextAlign">MiddleLeft</Property>
            <Property name="Text">Length of service</Property>
            <Property name="UseCompatibleTextRendering">True</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">8, 72</Property>
            <Property name="Name">PrmLabel1</Property>
            <Property name="Size">100, 20</Property>
            <Property name="TabIndex">1</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
          <Object type="iMedica.Prm.Client.UI.BaseControls.PrmTextBox, iMedica.Prm.Client.UI.BaseControls, Version=14.0.1404.2612, Culture=neutral, PublicKeyToken=null" name="PrmTextBox1">
            <Property name="Name">PrmTextBox1</Property>
            <Property name="DataBindings">
              <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
            </Property>
            <Property name="Location">8, 24</Property>
            <Property name="Size">440, 27</Property>
            <Property name="TabIndex">0</Property>
            <Property name="UseWaitCursor">True</Property>
          </Object>
        </Property>
        <Property name="DataBindings">
          <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
        </Property>
        <Property name="Location">16, 112</Property>
        <Property name="Name">PrmGroupBox2</Property>
        <Property name="Size">456, 112</Property>
        <Property name="TabIndex">2</Property>
        <Property name="UseWaitCursor">True</Property>
      </Object>
    </Property>
    <Property name="Cursor">WaitCursor</Property>
    <Property name="DataBindings">
      <Property name="DefaultDataSourceUpdateMode">OnValidation</Property>
    </Property>
    <Property name="Font">Microsoft Sans Serif, 8.25pt</Property>
    <Property name="ForeColor">ControlText</Property>
    <Property name="Location">0, 0</Property>
    <Property name="Margin">3, 3, 3, 3</Property>
    <Property name="MaximumSize">0, 0</Property>
    <Property name="MinimumSize">0, 0</Property>
    <Property name="RightToLeft">No</Property>
    <Property name="Size">2100, 2300</Property>
    <Property name="Tag" />
    <Property name="Text">Designer</Property>
    <Property name="UseWaitCursor">True</Property>
    <Property name="Padding">0, 0, 0, 0</Property>
    <Property name="ImeMode">NoControl</Property>
  </Object>
</Viklele.FormDesigner>';

select * from xmlhtmltable;
