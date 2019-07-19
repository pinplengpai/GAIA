import { fixedForm } from '../plugins/init_fix_form';
fixedForm();
import "bootstrap";
import "../plugins/flatpickr";
import "../plugins/init_autocomplete";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
