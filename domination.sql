-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 
-- サーバのバージョン： 10.4.8-MariaDB-log
-- PHP のバージョン: 7.3.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `domination`
--

-- Exportiere Datenbank Struktur für domination
CREATE DATABASE IF NOT EXISTS `domination` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `domination`;

-- --------------------------------------------------------

--
-- テーブルの構造 `dom_params2`
--

CREATE TABLE IF NOT EXISTS `dom_params2` (
  `params_title` varchar(80) COLLATE utf8mb4_bin NOT NULL,
  `param_name` varchar(80) COLLATE utf8mb4_bin NOT NULL,
  `param_value` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `dom_params2`
--

INSERT IGNORE INTO `dom_params2` (`params_title`, `param_name`, `param_value`) VALUES
('dom_standard_params', 'd_AutoKickTime', 300),
('dom_standard_params', 'd_EnableSimulationCamps', 0),
('dom_standard_params', 'd_EnemySkill', 2),
('dom_standard_params', 'd_GrasAtStart', 0),
('dom_standard_params', 'd_HALOJumpHeight', 2000),
('dom_standard_params', 'd_HALOWaitTime', 0),
('dom_standard_params', 'd_InitialViewDistance', 1600),
('dom_standard_params', 'd_LockAir', 1),
('dom_standard_params', 'd_LockArmored', 1),
('dom_standard_params', 'd_LockCars', 1),
('dom_standard_params', 'd_MHQDisableNearMT', 500),
('dom_standard_params', 'd_MTTowerSatchelsOnly', 0),
('dom_standard_params', 'd_MainTargets_num', -1),
('dom_standard_params', 'd_MaxNumAmmoboxes', 5),
('dom_standard_params', 'd_MaxViewDistance', 5000),
('dom_standard_params', 'd_MissionType', 0),
('dom_standard_params', 'd_NoMHQTeleEnemyNear', 50),
('dom_standard_params', 'd_ParaAtBase', 0),
('dom_standard_params', 'd_Terraindetail', 0),
('dom_standard_params', 'd_TimeOfDay', 7),
('dom_standard_params', 'd_ViewdistanceChange', 0),
('dom_standard_params', 'd_WithAmbientRadio', 1),
('dom_standard_params', 'd_WithIsleDefense', 0),
('dom_standard_params', 'd_WithJumpFlags', 1),
('dom_standard_params', 'd_WithLessArmor', 1),
('dom_standard_params', 'd_WithLessArmor_side', 0),
('dom_standard_params', 'd_WithMHQTeleport', 0),
('dom_standard_params', 'd_WithRevive', 0),
('dom_standard_params', 'd_WithReviveSpectating', 0),
('dom_standard_params', 'd_WithTeleToBase', 0),
('dom_standard_params', 'd_WithWinterWeather', 1),
('dom_standard_params', 'd_WreckDeleteTime', 3600),
('dom_standard_params', 'd_WreckMaxRepair', 3),
('dom_standard_params', 'd_ai_aggressiveshoot', 0),
('dom_standard_params', 'd_ai_alone_in_vehicle', 0),
('dom_standard_params', 'd_ai_awareness_rad', -1),
('dom_standard_params', 'd_ai_pursue_rad', -1),
('dom_standard_params', 'd_ai_quickammo', 0),
('dom_standard_params', 'd_amb_cnt', 2),
('dom_standard_params', 'd_amb_rad', 250),
('dom_standard_params', 'd_ao_check_for_ai', 1),
('dom_standard_params', 'd_ao_markers', 1),
('dom_standard_params', 'd_arsenal_mod', 0),
('dom_standard_params', 'd_arty_unlimited', 0),
('dom_standard_params', 'd_bonus_vec_type', 0),
('dom_standard_params', 'd_camp_center', 1),
('dom_standard_params', 'd_civ_groupcount', 2),
('dom_standard_params', 'd_civ_pnts', 3),
('dom_standard_params', 'd_civ_unitcount', 10),
('dom_standard_params', 'd_drop_max_dist', 500),
('dom_standard_params', 'd_drop_radius', 0),
('dom_standard_params', 'd_enable_civ_vehs', 10),
('dom_standard_params', 'd_enable_civ_vehs_locked', 0),
('dom_standard_params', 'd_enable_civ_vehs_rad', 350),
('dom_standard_params', 'd_enable_civs', 1),
('dom_standard_params', 'd_enable_fog', 0),
('dom_standard_params', 'd_enablefatigue', 1),
('dom_standard_params', 'd_enablesway', 1),
('dom_standard_params', 'd_enemy_vecs_lift', 0),
('dom_standard_params', 'd_engineerfull', 1),
('dom_standard_params', 'd_house_patrol', 0),
('dom_standard_params', 'd_launcher_cooldown', 30),
('dom_standard_params', 'd_max_ai', 4),
('dom_standard_params', 'd_max_bar_cnt', 3),
('dom_standard_params', 'd_max_camp_cnt', 2),
('dom_standard_params', 'd_max_truck_cargo', 6),
('dom_standard_params', 'd_maxnum_tks_forkick', 10),
('dom_standard_params', 'd_mhqvec_create_cooldown', 120),
('dom_standard_params', 'd_mt_respawngroups', 0),
('dom_standard_params', 'd_no_3rd_person', 1),
('dom_standard_params', 'd_no_faks', 1),
('dom_standard_params', 'd_no_mortar_ar', 1),
('dom_standard_params', 'd_no_teamkill', 0),
('dom_standard_params', 'd_occ_bldgs', 1),
('dom_standard_params', 'd_occ_cnt', 4),
('dom_standard_params', 'd_occ_rad', 250),
('dom_standard_params', 'd_only_medics_canrevive', 1),
('dom_standard_params', 'd_ovrw_cnt', 2),
('dom_standard_params', 'd_ovrw_rad', 250),
('dom_standard_params', 'd_pilots_only', 1),
('dom_standard_params', 'd_player_kick_shootingbase', 10),
('dom_standard_params', 'd_playernames_state', 1),
('dom_standard_params', 'd_pylon_lodout', 0),
('dom_standard_params', 'd_pylon_noclust', 0),
('dom_standard_params', 'd_respawnatsql', 0),
('dom_standard_params', 'd_show_player_marker', 1),
('dom_standard_params', 'd_show_playernames', 1),
('dom_standard_params', 'd_skillfps', 0),
('dom_standard_params', 'd_sm_dorandom', 0),
('dom_standard_params', 'd_smallgrps', 0),
('dom_standard_params', 'd_snp_aware', 0),
('dom_standard_params', 'd_snp_cnt', 2),
('dom_standard_params', 'd_snp_rad', 425),
('dom_standard_params', 'd_sub_kill_points', 0),
('dom_standard_params', 'd_sub_tk_points', 10),
('dom_standard_params', 'd_timemultiplier', 6),
('dom_standard_params', 'd_transf_allow', 0),
('dom_standard_params', 'd_va_percentage', 0),
('dom_standard_params', 'd_vec_at_farp', 0),
('dom_standard_params', 'd_weather', 0),
('dom_standard_params', 'd_with_3Dicon', 1),
('dom_standard_params', 'd_with_MainTargetEvents', 0),
('dom_standard_params', 'd_with_ai', 1),
('dom_standard_params', 'd_with_ai_features', 1),
('dom_standard_params', 'd_with_base_sabotage', 1),
('dom_standard_params', 'd_with_bis_dynamicgroups', 0),
('dom_standard_params', 'd_with_dynsim', 0),
('dom_standard_params', 'd_with_mhq_camo', 0),
('dom_standard_params', 'd_with_minefield', 0),
('dom_standard_params', 'd_with_ranked', 1),
('dom_standard_params', 'd_with_targetselect_count', 4),
('dom_standard_params', 'd_without_nvg', 1),
('dom_standard_params', 'd_without_sm_bonus', 1),
('dom_standard_params', 'd_without_vec_nvg', 1),
('dom_standard_params', 'd_without_vec_ti', 1),
('dom_standard_params', 'd_withsandstorm', 0),
('dom_standard_params', 'xr_lifetime', 300),
('dom_standard_params', 'xr_max_lives', -1),
('dom_standard_params', 'xr_respawn_available_after', 5);

-- --------------------------------------------------------

--
-- テーブルの構造 `dom_settings`
--

CREATE TABLE IF NOT EXISTS `dom_settings` (
  `name` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(400) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `dom_settings`
--

INSERT IGNORE INTO `dom_settings` (`name`, `value`) VALUES
('d_use_sql_settings', 'true'),
('d_db_auto_save', 'false'),
('d_reserved_slot', '[]'),
('d_uid_reserved_slots', '[]'),
('d_uids_for_reserved_slots', '[]'),
('d_tt_points', '[30,7,15,5,10,5,10,4,2]'),
('d_cas_available_time', '600'),
('d_ranked_a', '[20,[3,2,1,0],10,3,10,10,20,3,[\"Corporal\",\"Sergeant\",\"Lieutenant\",\"Lieutenant\",\"Sergeant\",\"Corporal\"],30,400,10,200,20,10,5,20,4,1,20,20,10,20]'),
('d_addscore_a', '[5,5,5,5,5,30,10,10,[3,2,1,0],5,3,1,1,20]'),
('d_points_needed', '[20,50,90,140,200,270,500]'),
('d_points_needed_db', '[500,2000,5000,9000,14000,20000,30000]'),
('d_ai_groups_respawn_time', '[120,60,320,170]'),
('d_set_pl_score_db', 'true'),
('d_launcher_cooldown', '0'),
('d_number_attack_planes', '1'),
('d_number_attack_choppers', '1'),
('d_number_light_attack_choppers', '1'),
('d_number_attack_uavs', '1'),
('d_noambient_bf_sounds', 'false'),
('d_time_until_next_sidemission', '[[10,300],[20,400],[30,500],[500,600]]'),
('d_airai_respawntime', '120');

-- --------------------------------------------------------

--
-- テーブルの構造 `missionsave`
--

CREATE TABLE IF NOT EXISTS `missionsave` (
  `name` varchar(80) COLLATE utf8mb4_bin NOT NULL,
  `d_maintargets` int(11) NOT NULL,
  `d_maintargets_list` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `d_current_target_index` int(11) NOT NULL,
  `d_cur_sm_idx` int(11) NOT NULL,
  `d_resolved_targets` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `d_recapture_indices` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `d_side_missions_random` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `d_current_mission_counter` int(11) NOT NULL,
  `d_searchintel` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `d_bonus_vecs_db` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `d_worldname` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `d_combiname` varchar(130) COLLATE utf8mb4_bin NOT NULL,
  `missionname` varchar(130) COLLATE utf8mb4_bin NOT NULL,
  `d_retaken_farpspos` varchar(1000) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `missionsavett`
--

CREATE TABLE IF NOT EXISTS `missionsavett` (
  `name` varchar(80) COLLATE utf8mb4_bin NOT NULL,
  `d_maintargets` int(11) NOT NULL,
  `d_maintargets_list` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `d_current_target_index` int(11) NOT NULL,
  `d_cur_sm_idx` int(11) NOT NULL,
  `d_resolved_targets` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `d_recapture_indices` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `d_side_missions_random` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `d_current_mission_counter` int(11) NOT NULL,
  `d_searchintel` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `d_bonus_vecs_db_w` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `d_bonus_vecs_db_e` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `d_worldname` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `d_points_blufor` int(11) NOT NULL,
  `d_points_opfor` int(11) NOT NULL,
  `d_kill_points_blufor` int(11) NOT NULL,
  `d_kill_points_opfor` int(11) NOT NULL,
  `d_points_array` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `d_combiname` varchar(130) COLLATE utf8mb4_bin NOT NULL,
  `missionname` varchar(130) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `uid` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `playerid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `playtime` int(11) NOT NULL DEFAULT 0,
  `infkills` int(11) NOT NULL DEFAULT 0,
  `softveckills` int(11) NOT NULL DEFAULT 0,
  `armorkills` int(11) NOT NULL DEFAULT 0,
  `airkills` int(11) NOT NULL DEFAULT 0,
  `deaths` int(11) NOT NULL DEFAULT 0,
  `totalscore` int(11) NOT NULL DEFAULT 0,
  `radiotowerkills` int(11) NOT NULL DEFAULT 0,
  `numplayedonserver` int(11) NOT NULL DEFAULT 1,
  `campscaptured` int(11) NOT NULL DEFAULT 0,
  `mtsmkills` int(11) NOT NULL DEFAULT 0,
  `teamkills` int(11) NOT NULL DEFAULT 0,
  `revives` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
