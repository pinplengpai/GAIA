import "bootstrap";
import "../plugins/flatpickr";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
import { wrap } from '../plugins/init_fix_form';
fixedForm();

