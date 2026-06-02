<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/usr/layout/top.do" />
<c:import url="/usr/menu/header.do" />

<main class="sub-overview-page">

            <section class="sub-visual section-rise">
                <div class="sub-visual__bg sub-visual__bg_03"></div>
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
                        <p>OUV(Outstanding Universal Value)</p>
                        <strong>Must satisfy one or more of 10 criteria</strong>
                    </div>

                    <div class="ouv-card-list js-rise">
                        <article>
                            <strong>01</strong>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_ouv_01.svg" alt="">
                            <h4>Authenticity</h4>
                            <em>Heritage Value Expression</em>
                            <p>
                                Form and design, materials and substance, use and function, tradition, techniques,
                                management systems, location and setting, language, other forms of intangible
                                heritage, spirit and feeling, and other internal and external elements, must ensure
                                their cultural values are truthfully and credibly expressed.
                            </p>
                        </article>

                        <article>
                            <strong>02</strong>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_ouv_02.svg" alt="">
                            <h4>Completeness</h4>
                            <em>Integrity</em>
                            <p>
                                The extent to which all elements necessary to express the Outstanding Universal Value
                                are included, whether the size is adequate to ensure the complete representation of the
                                features and processes which convey the property’s significance, and the extent of
                                negative effects from development or neglect.
                            </p>
                        </article>

                        <article>
                            <strong>03</strong>
                            <img src="/hoeamsaji/assets/site/hoeamsaji/img/ico_ouv_03.svg" alt="">
                            <h4>Protection ·<br>Management System</h4>
                            <p>
                                Legal, administrative protection systems,
                                Establishment of buffer zones, etc.
                            </p>
                        </article>
                    </div>

                    <div class="criteria-table-wrap js-rise">
                        <p class="table-caption">Must satisfy one or more of 10 criteria</p>

                        <table class="criteria-table">
                            <caption>World Heritage Listing Criteria</caption>

                            <colgroup>
                                <col style="width:52px;">
                                <col>
                                <col style="width:42%;">
                            </colgroup>

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
                                        It will represent a masterpiece crafted by human creativity
                                    </td>
                                    <td>
                                        Sydney Opera House, Great Wall of China,
                                        Seokguram Grotto and Bulguksa Temple
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅱ</td>
                                    <td>
                                        Reflecting a significant exchange of human values over a long period of time
                                        or within a certain cultural sphere of the world in architecture or technological
                                        development, monument production, urban planning or landscape design
                                    </td>
                                    <td>
                                        Acropolis in Athens, Suwon Hwaseong Fortress,
                                        Changdeokgung Palace, Namhansanseong Fortress
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅲ</td>
                                    <td>
                                        It will be unrivaled or at least exceptional evidence of existing or already
                                        vanished cultural traditions or civilizations.
                                    </td>
                                    <td>
                                        Stonehenge in the UK, Gochang,
                                        Hwasun, and Ganghwa dolmens
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
                                        China Dunhuang Mogao Caves,
                                        Jongmyo Shrine, Namhansanseong Fortress
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅴ</td>
                                    <td>
                                        Representative examples illustrating traditional settlements or land and sea
                                        uses that represent the environment, human interactions, or culture, especially
                                        when made vulnerable by the impact of irreversible changes.
                                    </td>
                                    <td>
                                        Libya's ancient city of Ghadames
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅵ</td>
                                    <td>
                                        It must be directly or visibly associated with an event, existing tradition, idea or
                                        creed, or work of art and literature of outstanding universal importance
                                        (recommended to be applied in conjunction with other criteria)
                                    </td>
                                    <td>
                                        Hiroshima Atomic Bomb Dome, Japan
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

                    <div class="criteria-table-wrap js-rise">
                        <p class="table-caption">Must satisfy one or more of 10 criteria</p>

                        <table class="criteria-table">
                            <caption>Natural Heritage Listing Criteria</caption>
                            <colgroup>
                                <col style="width:52px;">
                                <col>
                                <col style="width:42%;">
                            </colgroup>
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
                                        A region possessing supreme natural phenomena, outstanding natural beauty,
                                        and aesthetic significance
                                    </td>
                                    <td>
                                        Russia's Lake Baikal, Kenya National Park,
                                        Jeju Lava Caves and Volcanic Islands
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅷ</td>
                                    <td>
                                        Representative examples demonstrating major stages of Earth's history,
                                        including the record of life, major geological processes in topographic
                                        development, and important features in terms of geomorphology or physical
                                        geography
                                    </td>
                                    <td>
                                        Grand Canyon in the U.S.,
                                        Jeju Lava Caves and Volcanic Islands
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅸ</td>
                                    <td>
                                        Representative examples demonstrating major ecological and biological
                                        processes in the evolution or development of terrestrial, freshwater, coastal,
                                        and marine ecosystems and animal and plant communities
                                    </td>
                                    <td>
                                        Hawaii Volcanoes National Park, USA,
                                        Kenya National Park
                                    </td>
                                </tr>

                                <tr>
                                    <td>ⅹ</td>
                                    <td>
                                        Habitats that possess outstanding universal value from the perspective of
                                        scientific research or conservation, and are the most important and significant
                                        for the in-situ conservation of biological diversity, including currently
                                        endangered species.
                                    </td>
                                    <td>
                                        Sichuan Giant Panda Reserve, China
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </section>
    

        </main>

<c:import url="/usr/layout/footer.do" />