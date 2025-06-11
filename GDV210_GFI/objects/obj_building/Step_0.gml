//if (m_buildingNo == 1 && global.distort1)
//{
//    sprite_index = m_distortSprite;
//}
//else if (m_buildingNo == 2 && global.distort2)
//{
//    sprite_index = m_distortSprite;
//}
//else
//{
//    sprite_index = m_buildingSprite;
//}

switch (m_distortion_level)
{
	case 0:
	image_index = 0;
	break;
	case 1:
	image_index = 1;
	break;
	default:
	image_index = 0;
	break;
}