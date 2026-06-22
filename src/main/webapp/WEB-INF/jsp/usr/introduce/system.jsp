<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<main class="sub-overview-page">

            <section class="sub-visual section-rise">
                <div class="sub-visual__bg sub-visual__bg_02"></div>
                <div class="sub-visual__dim"></div>

                <div class="sub-visual__content">
                    <h2>
                        <span>World heritage</span>
                        <span>system</span>
                    </h2>

                    <div class="sub-location"> 
                        <a href="/hoeamsaji/usr/main.do"><img src="/hoeamsaji/assets/site/hoeamsaji/img/common/ico_home.png" alt="home"></a>
                        <span>World Heritage</span>
                        <span>World heritage system</span>
                    </div>
                </div>

                <div class="scroll-down">SCROLL DOWN</div> 
            </section>


            <section class="listing-section section-rise">
                <div class="sub-inner">

                    <div class="listing-title js-rise">
                        <h3>Outstanding Universal Value</h3>
                        <div class="title-divider">
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/title-divider.svg" alt="">
                        </div>
                        <p>To be inscribed as World Heritage, a property must have Outstanding Universal Value and meet at least one of the 10 criteria. </p>
                        <strong>Key Requirements for World Heritage Inscription</strong>
                    </div>

                    <div class="ouv-card-list js-rise">
                        <article>
                            <strong>01</strong>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_ouv_01.svg" alt="">
                            <h4>Authenticity</h4>
                            <em>Credible Expression of Outstanding Universal Value</em>
                            <p>
                                A property is considered to have authenticity whe its cultural values are truthfully and credibly expressed through a variety of attributes which may be conveying or expressing the property’s Outstanding Universal Value including 
								<br>• form and design
								<br>• materials and substance 
								<br>• use and function 
								<br>• tradition, techniques, management systems
								<br>• location and setting 
								<br>• language, other forms of intangible heritage
								<br>• spirit and feeling
								<br>• and other internal and external elements.
                            </p>
                        </article>

                        <article>
                            <strong>02</strong>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_ouv_02.svg" alt="">
                            <h4>Integrity</h4>
                            <em>Wholeness and Intactness of Outstanding Universal Value</em>
                            <p>
                                Integrity is defined as a measure of the completeness or intactness of the attributes that convey Outstanding Universal Value, through the key words of 
								<br>• Wholeness: all the necessary attributes are within the property
								<br>• Intactness: all the necessary attributes are still present – none are lost or have been significantly damaged or have decayed
								<br>• Absence of threats: none of the attributes are threatened by development, deterioration or neglect.
                            </p>
                        </article>

                        <article>
                            <strong>03</strong>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_ouv_03.svg" alt="">
                            <h4>Protection · Management System</h4>
                            <em>Long-term Protection and Management</em>
                            <p>
                                Legal, administrative protection systems, establishment of buffer zones, etc.
                            </p>
                        </article>
                    </div>

                    <div class="criteria-table-wrap js-rise">
                        <p class="table-caption">10 Criteria for Inscription</p>

                        <table class="criteria-table">
                            <caption>World Heritage Listing Criteria</caption>

                            <colgroup>
                                <col style="width:52px;">
                                <col>
                                <col style="width:42%;">
                            </colgroup>
							<h4>Cultural Heritage</h4>
							
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Listing criteria</th>
                                    <th>Example</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>ⅰ</td>
                                    <td>
                                       represent a masterpiece of human creative genius
                                    </td>
                                    <td>
                                        Sydney Oprea House (Australia), 
                                        The Great Wall (China), 
                                        Seokguram Grotto and Bulguksa Temple (Korea)
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅱ</td>
                                    <td>
                                        exhibit an important interchange of human values,
                                        over a span of time or within a cultural area of the world, 
                                        on developments in architecture or technology, monumental arts, 
                                        town-planning or landscape design
                                    </td>
                                    <td>
                                        Acropolis, Athens (Greece), 
                                        Hwaseong Fortress (Korea), 
                                        Changdeokgung Palace Complex (Korea),
                                        Namhansanseong (Korea)
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅲ</td>
                                    <td>
                                        bear a unique or at least exceptional testimony to a cultural tradition 
                                        or to a civilization which is living or which has disappeared.
                                    </td>
                                    <td>
                                        Stonehenge, Avebury and Associated Sites (UK),
                                        Gochang, Hwasun and Ganghwa Dolmen Sites (Korea)
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅳ</td>
                                    <td>
                                        It will be a representative example of a building, an ensemble of architecture or
                                        technology, or a landscape type that exemplifies an important stage in human
                                        history.
                                    </td>
                                    <td>
                                        Magao Caves (China),
                                        Jongmyo Shrine (Korea),
                                        Namhansanseong (Korea) 
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅴ</td>
                                    <td>
                                        be an outstanding example of a traditional human settlement, 
                                        land-use, or sea-use which is representative of a culture (or cultures), 
                                        or human interaction with the environment especially when it has become vulnerable 
                                        under the impact of irreversible change.
                                    </td>
                                    <td>
                                        Old Town of Ghadames, (Libya)
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅵ</td>
                                    <td>
                                        be directly or tangibly associated with events or living traditions,
                                        with ideas, or with beliefs, with artistic and literary works of outstanding universal significance.
                                        (The Committee considers that this criterion should preferably be used in conjunction with other criteria)
                                    </td>
                                    <td>
                                        Hiroshima Peace Memorial (Genbaku Dome, Japan)
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
					 <div class="criteria-table-wrap js-rise">
                        <table class="criteria-table">
                            <caption>Natural Heritage Listing Criteria</caption>
                            <colgroup>
                                <col style="width:52px;">
                                <col>
                                <col style="width:42%;">
                            </colgroup>
                            <h4>Natural Heritage</h4>
                            
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Listing criteria</th>
                                    <th>Example</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>ⅶ</td>
                                    <td>
                                        contain superlative natural phenomena or areas of exceptional natural beauty and aesthetic importance
                                    </td>
                                    <td>
                                        Lake Baikal (Russia), 
                                        Mount Kenya National Park/Natural Forest (Kenya), 
                                        Jeju Volcanic Island and Lava Tubes (Korea)
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅷ</td>
                                    <td>
                                        be outstanding examples representing major stages of earth's history,
                                        including the record of life, significant on-going geological processes in the development of landforms,
                                        or significant geomorphic or physiographic features
                                    </td>
                                    <td>
                                        Grand Canyon National Park (U.S.A), 
                                        Jeju Volcanic Island and Lava Tubes (Korea)
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅸ</td>
                                    <td>
                                        be outstanding examples representing significant on-going ecological and biological processes
                                        in the evolution and development of terrestrial, fresh water, coastal and marine ecosystems 
                                        and communities of plants and animals
                                    </td>
                                    <td>
                                        Hawaii Volcanoes National Park (U.S.A), 
                                        Mount Kenya National Park/Natural Forest (Kenya)
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅹ</td>
                                    <td>
                                        contain the most important and significant natural habitats for in-situ conservation of biological diversity, 
                                        including those containing threatened species of Outstanding Universal Value from the point of view of science or conservation.
                                    </td>
                                    <td>
                                        Sichuan Giant Panda Sanctuaries - Wolong, Mt Siguniang and Jiajin Mountains (China)
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="effects-visual js-rise">
                        <img src="/hoeamsaji/assets/site/hoeamsaji/img/thumb-11.jpg" alt="">
                        <h3>Effects of World Heritage listing</h3>
                    </div>

                    <div class="effects-list js-rise">
                        <article>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_effect_01.svg" alt="">
                            <p>Sustainable Conservation &<br>Management of Heritage</p>
                        </article>

                        <article>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_effect_02.svg" alt="">
                            <p>Enhancement of Cultural Pride &<br>Elevating Cultural Status</p>
                        </article>

                        <article>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_effect_03.svg" alt="">
                            <p>Revitalization of Local Economy<br>through Increased Tourists</p>
                        </article>

                        <article>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_effect_04.svg" alt="">
                            <p>International Cooperation and<br>Government Interest and Support</p>
                        </article>
                    </div>

                </div>
            </section>
    

        </main>

<c:import url="/usr/layout/footer.do" />