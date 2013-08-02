Grid = class()
function Grid:ctor()

    local visibleSize = CCDirector:sharedDirector():getVisibleSize()
    self.bg = CCLayer:create()
    self.bg:setPosition(ccp(visibleSize.width/2, visibleSize.height/2))
    local back = CCSprite:create("pics/settingbg.png")
    self.bg:addChild(back)
    local sz = back:getContentSize()
    back:setScaleX(visibleSize.width/sz.width)
    back:setScaleY(visibleSize.height/sz.height)

    local gridW = 50
    self.gridW = gridW
    local line = CCSprite:create("pics/line.png")
    local sz = line:getContentSize()
    line:setPosition(ccp(0, 4.5*gridW))
    line:setScaleY(5*gridW/sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(0, -4.5*gridW))
    line:setScaleY(5*gridW/sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)
    line:setRotation(90)


    local line = CCSprite:create("pics/line2.png")
    local l2Sz = line:getContentSize()
    
    local width = {5, 7, 9, 9, 9, 9, 7, 5}
    local id = 1
    for i = -3.5, 3.5, 1 do
        line = CCSprite:create("pics/line2.png")
        line:setPosition(ccp(0, i*gridW))
        line:setScaleY(width[id]*gridW/l2Sz.height);
        line:setColor(ccc3(180, 166, 125))
        line:setRotation(90)
        self.bg:addChild(line)
        id = id+1
    end

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-4.5*gridW, 0))
    line:setScaleY(5*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(4.5*gridW, 0))
    line:setScaleY(5*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)


    local width = {5, 7, 9, 9, 9, 9, 7, 5}
    local id = 1
    for i = -3.5, 3.5, 1 do
        line = CCSprite:create("pics/line2.png")
        line:setPosition(ccp(i*gridW, 0))
        line:setScaleY(width[id]*gridW/l2Sz.height);
        line:setColor(ccc3(180, 166, 125))
        self.bg:addChild(line)
        id = id+1
    end

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-4*gridW, 2.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-4*gridW, -2.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-3*gridW, 3.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-3*gridW, -3.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)


    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(4*gridW, 2.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(4*gridW, -2.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(3*gridW, 3.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(3*gridW, -3.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    --纵向
    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-3.5*gridW, 3*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-3.5*gridW, -3*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(3.5*gridW, 3*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(3.5*gridW, -3*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-2.5*gridW, 4*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-2.5*gridW, -4*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(2.5*gridW, 4*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(2.5*gridW, -4*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(-0.5*gridW, 0*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(0.5*gridW, 0*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(0*gridW, -0.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)

    line = CCSprite:create("pics/line.png")
    line:setPosition(ccp(0*gridW, 0.5*gridW))
    line:setScaleY(1*gridW/l2Sz.height);
    line:setColor(ccc3(180, 166, 125))
    line:setRotation(90)
    self.bg:addChild(line)


    --[[
    local but0 = CCMenuItemImage:create("pics/but0.png", "pics/but0.png")
    but0:setPosition(ccp(-135, -300))


    local but1 = CCMenuItemImage:create("pics/but1.png", "pics/but1.png")
    but1:setPosition(ccp(-50, -300))


    local but2 = CCMenuItemImage:create("pics/but2.png", "pics/but2.png")
    but2:setPosition(ccp(50, -300))
    --]]


    --local but3 = CCMenuItemImage:create("pics/but3.png", "pics/but3.png")
    --but3:setPosition(ccp(135, -300))
    local but3 = {}

    self.curSelect = but3
    --[[
    self.curSelect = but0
    but0:setColor(ccc3(40, 116, 196))
    --]]

    local function onBut0()
        self.curSelect:setColor(ccc3(255, 255, 255))
        self.curSelect = but0
        self.curSelect:setColor(ccc3(40, 116, 196))
    end

    local function onBut1()
        self.curSelect:setColor(ccc3(255, 255, 255))
        self.curSelect = but1
        self.curSelect:setColor(ccc3(40, 116, 196))
    end

    local function onBut2()
        self.curSelect:setColor(ccc3(255, 255, 255))
        self.curSelect = but2
        self.curSelect:setColor(ccc3(40, 116, 196))

    end

    local function onBut3()
        self.curSelect:setColor(ccc3(255, 255, 255))
        self.curSelect = but3
        self.curSelect:setColor(ccc3(40, 116, 196))

    end

    --but0:registerScriptTapHandler(onBut0)
    --but1:registerScriptTapHandler(onBut1)
    --but2:registerScriptTapHandler(onBut2)
    --but3:registerScriptTapHandler(onBut3)
    --self.but = {but0, but1, but2, but3}
    self.but = {nil, nil, nil, but3}

    --but3:setColor(ccc3(40, 116, 196))
    local menu = CCMenu:create()
    menu:setPosition(ccp(0, 0))
    --[[
    menu:addChild(but0)
    menu:addChild(but1)
    menu:addChild(but2)
    --]]
    --menu:addChild(but3)
    self.bg:addChild(menu)
    --点击放下阶段 
    --旋转棋子阶段
    self.state = 0


    --生效计算放置的子的位置  
    --计算攻击的方向
    local function onOk()
        if self.state == 1 then
            if not self.showYet then
                self:showWarn("将附近棋子推出棋盘或者中心都可以使棋子消失！")
                self.showYet = true
            else
                self:clearWarn()
            end
            self.okBut:setColor(ccc3(125, 125, 125))
            self.cancelBut:setColor(ccc3(125, 125, 125))
            --self.state = 0
            local ox, oy, rot = self:getPosAndDir()
            self.cells[xyToKey(ox, oy)] = self.nb
            local tex = CCTextureCache:sharedTextureCache():addImage("pics/red.png")
            self.nb:setTexture(tex)
            --单一方向向外 退出一步 如果推出边界
            --或者 推进中心的黑洞 则消失
            --只有相临的直线需要检测
            if self.curSelect == self.but[1] then
                local pushOne, pushPos, dx, dy = self:pushOneDir(Color.RED, {ox, oy}, rot)
                if pushOne ~= nil then
                    pushOne:setPosition(ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW))
                    self.cells[xyToKey(pushPos[1], pushPos[2])] = nil
                    self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = pushOne

                    if not self:checkIn(pushPos[1]+dx, pushPos[2]+dy) then
                        self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = nil
                        pushOne:removeFromParentAndCleanup(true)
                    end
                end
            elseif self.curSelect == self.but[2] then
                local pushOne, pushPos, dx, dy = self:pushOneDir(Color.RED, {ox, oy}, rot)
                if pushOne ~= nil then
                    pushOne:setPosition(ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW))
                    self.cells[xyToKey(pushPos[1], pushPos[2])] = nil
                    self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = pushOne

                    if not self:checkIn(pushPos[1]+dx, pushPos[2]+dy) then
                        self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = nil
                        pushOne:removeFromParentAndCleanup(true)
                    end
                end
                --0 1 2 3 4 5 6 7 
                -- -4 -3 -2 -1 0 1 2 3 4 
                rot = (rot+4)%8

                local pushOne, pushPos, dx, dy = self:pushOneDir(Color.RED, {ox, oy}, rot)
                if pushOne ~= nil then
                    pushOne:setPosition(ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW))
                    self.cells[xyToKey(pushPos[1], pushPos[2])] = nil
                    self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = pushOne

                    if not self:checkIn(pushPos[1]+dx, pushPos[2]+dy) then
                        self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = nil
                        pushOne:removeFromParentAndCleanup(true)
                    end
                end
                

            elseif self.curSelect == self.but[3] then
                local add = {0, 2, 4, 6}
                for _, a in ipairs(add) do
                    local tr = (rot+a) % 8
                    local pushOne, pushPos, dx, dy = self:pushOneDir(Color.RED, {ox, oy}, tr)
                    print(dx, dy, tr)
                    if pushOne ~= nil then
                        pushOne:setPosition(ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW))
                        self.cells[xyToKey(pushPos[1], pushPos[2])] = nil
                        self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = pushOne

                        if not self:checkIn(pushPos[1]+dx, pushPos[2]+dy) then
                            self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = nil
                            pushOne:removeFromParentAndCleanup(true)
                        end
                    end
                end
            else
                local add = {0, 1, 2, 3, 4, 5, 6, 7}
                for _, a in ipairs(add) do
                    local tr = (rot+a) % 8
                    local pushOne, pushPos, dx, dy = self:pushOneDir(Color.RED, {ox, oy}, tr)
                    if pushOne ~= nil then

                        --pushOne:setPosition(ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW))
                        self.cells[xyToKey(pushPos[1], pushPos[2])] = nil
                        self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = pushOne

                        if not self:checkIn(pushPos[1]+dx, pushPos[2]+dy) then
                            self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = nil
                            --pushOne:removeFromParentAndCleanup(true)

                            local array = CCArray:create()
                            local fade = CCFadeOut:create(0.2)
                            local function removeOne()
                                pushOne:removeFromParentAndCleanup(true)
                            end
                            local call = CCCallFunc:create(removeOne)
                            array:addObject(CCMoveTo:create(0.2, ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW)))
                            array:addObject(fade)
                            array:addObject(call)
                            local seq = CCSequence:create(array)
                            pushOne:runAction(seq)
                        else
                            pushOne:runAction(CCMoveTo:create(0.2, ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW)))
                        end
                    end
                end
            end
            self.state = 2
            self.inAI = true
            self.aiState = 0
            self.passTime = 0
            --self:doAI()
        elseif self.gameOver then
            local scene = CCScene:create()
            local gr = Grid.new()
            scene:addChild(gr.bg)
            CCDirector:sharedDirector():replaceScene(scene)
        end
    end
    local okBut = CCMenuItemImage:create("button.png", "buttonOn.png")
    okBut:registerScriptTapHandler(onOk)
    menu:addChild(okBut)
    okBut:setPosition(ccp(-135, -300))
    local label = CCLabelTTF:create("确定", "", 30)
    label:setPosition(ccp(70, 30))
    okBut:addChild(label)
    self.okBut = okBut
    self.okBut:setColor(ccc3(125, 125, 125))
    self.okWord = label
    
    local function onCancel()
        if self.state == 1 then
            self:clearWarn()
            self.okBut:setColor(ccc3(125, 125, 125))
            self.cancelBut:setColor(ccc3(125, 125, 125))
            --local ox, oy, rot = self:getPosAndDir()
            self.nb:removeFromParentAndCleanup(true)
            self.nb = nil
            self.state = 0
        end
    end

    local cancelBut = CCMenuItemImage:create("button.png", "buttonOn.png")
    cancelBut:registerScriptTapHandler(onCancel)
    cancelBut:setPosition(ccp(135, -300))
    menu:addChild(cancelBut)
    local label = CCLabelTTF:create("反悔", "", 30)
    label:setPosition(ccp(70, 30))
    cancelBut:addChild(label)
    cancelBut:setColor(ccc3(125, 125, 125))
    self.cancelBut = cancelBut

    self.cells = {}

    self.leftRound = 30
    local label = CCLabelTTF:create("剩余回合:30", "", 30)
    self.bg:addChild(label)
    label:setPosition(ccp(0, 330))
    self.roundNum = label

    --self:putChess(2, 0)
    self.wightValue = {
        {0, 0,  1,  3,  3,  3,  1,  0, 0},
        {0, 1,  3,  6,  10, 6,  3,  1, 0},
        {1, 3,  28, 36, 45, 36, 28, 3, 1},
        {3, 6,  36, 6,  6,  6,  36, 6, 3},
        {3, 10, 45, 6,  0,  6,  45, 10, 3},
        {3, 6,  36, 6,  6,  6,  36, 6, 3},
        {1, 3,  28, 36, 45, 36, 28, 3, 1},
        {0, 1,  3,  6,  10, 6,  3,  1, 0},
        {0, 0,  1,  3,  3,  3,  1,  0, 0},
    }
    self:showWarn("点击棋盘放置棋子")

    registerTouch(self)
    registerUpdate(self)
end

function Grid:clearWarn()
    if self.warn ~= nil then
        self.warn:removeFromParentAndCleanup(true)
        self.warn = nil
    end
end
function Grid:showWarn(str)
    self:clearWarn()
    self.warn = CCLabelTTF:create(str, "", 30, CCSizeMake(400, 0), kCCTextAlignmentCenter, kCCVerticalTextAlignmentCenter)
    self.bg:addChild(self.warn, 10, 10)
end
function Grid:update(diff)
    if self.inAI then
        if self.aiState == 0 then
            self.passTime = self.passTime+diff
            if self.passTime > 0.5 then
                local np = self:doAI()
                self.aiState = 1
                self.passTime = 0
            end
        elseif self.aiState == 1 then
            self.passTime = self.passTime+diff
            if self.passTime > 0.5 then
                self.passTime = 0
                self.inAI = false
                self.state = 0
                self.leftRound = self.leftRound-1
                self.roundNum:setString("剩余回合:"..self.leftRound)
                if self.leftRound <= 0 then
                    local red = 0
                    local blue = 0
                    for k, v in pairs(self.cells) do
                        if v.color == Color.RED then
                            red = red+1
                        else
                            blue = blue+1
                        end
                    end
                    if red < blue then
                        self:showWarn("你失败了！点击重新开始")
                    elseif blue < red then
                        self:showWarn("你胜利了！点击重新开始")
                    else
                        self:showWarn("平局！点击重新开始")
                    end
                    self.okBut:setColor(ccc3(255, 255, 255))
                    self.okWord:setString("重新开始")
                    self.gameOver = true
                    self.state = 3
                end
            end
        end
    end
end

function Grid:doAI()
    local allPossible = {}--key--->{list}
    local maxValue = 0
    for i=-4, 4, 1 do
        for j=4, -4, -1 do
            --棋盘上面可以放置的位置
            if self:checkIn(i, j) then
                local key = xyToKey(i, j)
                local obj = self.cells[key]
                --可以放子 评估价值
                if obj == nil then
                    local posV = self.wightValue[j+5][i+5]
                    --根据棋子类型检测 8个方向
                    --假设棋子只有一种类型则8个方向都检测
                    for k = 0, 7, 1 do
                        local pushOne, pushPos, dx, dy = self:pushOneDir(Color.BLUE, {i, j}, k)
                        if pushOne ~= nil then
                            if not self:checkIn(pushPos[1]+dx, pushPos[2]+dy) then
                                posV = posV+34
                            else
                                local opv = self.wightValue[pushPos[2]+5][pushPos[1]+5]
                                local npv = self.wightValue[pushPos[2]+dy+5][pushPos[1]+dx+5]
                                if npv < opv then
                                    posV = posV+5
                                elseif npv > opv then
                                    posV = posV-5
                                end
                            end
                        end
                    end
                    
                    if posV > maxValue then
                        maxValue = posV
                        allPossible = {{i, j}}
                    elseif posV == maxValue then
                        table.insert(allPossible, {i, j})
                    end

                end
            end
        end
    end
    if #allPossible > 0 then
        local rd = math.random(#allPossible)
        local np = allPossible[rd]
        self:putChess(np[1], np[2])
        return np
    end
    return nil
    --self.state = 0
end


--current position
--push direction
--current color
--return: otherone  or nil
function Grid:pushOneDir(color, pos, rot)
    local dx, dy
    if rot == 0 then
        dx = 1
        dy = 0 
    elseif rot == 1 then
        dx = 1
        dy = 1
    elseif rot == 2 then
        dx = 0 
        dy = 1 
    elseif rot == 3 then
        dx = -1
        dy = 1
    elseif rot == 4 or rot == -4 then
        dx = -1
        dy = 0
    elseif rot == -1 or rot == 7 then
        dx = 1
        dy = -1
    elseif rot == -2 or rot == 6 then
        dx = 0
        dy = -1
    elseif rot == -3 or rot == 5 then
        dx = -1
        dy = -1
    end

    local nx, ny = pos[1]+dx, pos[2]+dy

    local pushOne = nil
    local pushPos = {}
    while true do
        if not self:checkIn(nx, ny) then
            break
        end
        local nei = self.cells[xyToKey(nx, ny)]
        --没有邻居break掉
        if nei == nil then
            break
        end
        --是敌人则推走
        --是自己人则不能推动
        if nei.color ~= color then
            pushOne = nei
            pushPos = {nx, ny}
        else
            pushOne = nil
            break
        end
        nx = nx + dx
        ny = ny + dy
    end
    return pushOne, pushPos, dx, dy
end

function Grid:putChess(x, y)
    local temp = CCSprite:create("pics/blue.png")
    self.bg:addChild(temp)
    temp:setPosition(ccp(x*self.gridW, y*self.gridW))
    local sz = temp:getContentSize()
    temp:setScale(self.gridW/sz.width)
    temp.color = Color.BLUE

    self.cells[xyToKey(x, y)] = temp

    for k=0, 7, 1 do
        local pushOne, pushPos, dx, dy = self:pushOneDir(Color.BLUE, {x, y}, k)

        if pushOne ~= nil then
            --pushOne:setPosition(ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW))
            self.cells[xyToKey(pushPos[1], pushPos[2])] = nil
            self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = pushOne


            if not self:checkIn(pushPos[1]+dx, pushPos[2]+dy) then
                self.cells[xyToKey(pushPos[1]+dx, pushPos[2]+dy)] = nil
                --pushOne:removeFromParentAndCleanup(true)

                local array = CCArray:create()

                local fade = CCFadeOut:create(0.2)
                local function removeOne()
                    pushOne:removeFromParentAndCleanup(true)
                end
                local call = CCCallFunc:create(removeOne)
                array:addObject(CCMoveTo:create(0.2, ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW)))
                array:addObject(fade)
                array:addObject(call)
                local seq = CCSequence:create(array)
                pushOne:runAction(seq)
            else
                pushOne:runAction(CCMoveTo:create(0.2, ccp((pushPos[1]+dx)*self.gridW, (pushPos[2]+dy)*self.gridW)))
            end
        end

    end
end
function Grid:getGrid(x, y)
    local nx, ny = round(x/self.gridW), round(y/self.gridW)
    return nx, ny
end
function Grid:checkIn(x, y)
    if x == 0 and y == 0 then
        return false
    end
    if x >= -2 and x <= 2 then
        if y >= -4 and y <= 4 then
            return true
        end
        return false
    end
    if x == -3 and y >= -3 and y <= 3 then
        return true
    end
    if x == 3 and y >= -3 and y <= 3 then
        return true
    end

    if x == -4 and y >= -2 and y <= 2 then
        return true
    end
    if x == 4 and y >= -2 and y <= 2 then
        return true
    end

    return false
end
function Grid:getPosAndDir()
    local ox, oy = self.nb:getPosition()
    ox, oy = self:getGrid(ox, oy)
    local rot = self.nb:getRotation()
    if self.curSelect == self.but[1] then
        rot = rot - 45
    elseif self.curSelect == self.but[2] then
        rot = rot - 90
    end
    rot = -rot
    rot = round(rot/45)
    -- -pi pi
    return ox, oy, rot
end
function Grid:setDir(x, y)
    local np = self.bg:convertToNodeSpace(ccp(x, y))
    local nx, ny = self:getGrid(np.x, np.y)

    local ox, oy = self.nb:getPosition()
    ox, oy = self:getGrid(ox, oy)
    local dx, dy = nx - ox, ny-oy
    if dx == 0 and dy == 0 then
    else
        local theta = math.atan2(dy, dx)
        theta = round(theta/(math.pi/4))
        theta = theta*math.pi/4
        if self.curSelect == self.but[1] then
            self.nb:setRotation(-theta*(180/math.pi)+45)
        elseif self.curSelect == self.but[2] then
            self.nb:setRotation(-theta*(180/math.pi)+90)
        elseif self.curSelect == self.but[3] then
            self.nb:setRotation(-theta*(180/math.pi))
        end
    end
end
--选择过方向之后 才能确定
function Grid:onTouchBegan(x, y)
    if self.state == 0 then
        local np = self.bg:convertToNodeSpace(ccp(x, y))
        local nx, ny = self:getGrid(np.x, np.y)
        if not self:checkIn(nx, ny) then
            return false
        end
        if self.cells[xyToKey(nx, ny)] ~= nil then
            return false
        end

        if not self.showYet then
            self:showWarn("点击 确定 或者 反悔")
            --self.showYet = true
        else
            self:clearWarn()
        end
        self.okBut:setColor(ccc3(255, 255, 255))
        self.cancelBut:setColor(ccc3(255, 255, 255))
        if self.curSelect == self.but[1] then
            self.nb = CCSprite:create("pics/but0.png")
        elseif self.curSelect == self.but[2] then
            self.nb = CCSprite:create("pics/but1.png")
        elseif self.curSelect == self.but[3] then
            self.nb = CCSprite:create("pics/but2.png")
        else
            self.nb = CCSprite:create("pics/but3.png")
        end
        self.bg:addChild(self.nb)
        self.nb.color = Color.RED

        local sz = self.nb:getContentSize()
        self.nb:setScale(self.gridW/sz.width)
        self.nb:setPosition(ccp(self.gridW*nx, self.gridW*ny))
        --self.nb:setRotation(45)

        return true
    elseif self.state == 1 then
        self:setDir(x, y)
    end
end
function Grid:onTouchMoved(x, y)
    if self.state == 0 then
        local np = self.bg:convertToNodeSpace(ccp(x, y))
        local nx, ny = self:getGrid(np.x, np.y)
        self.nb:setPosition(ccp(self.gridW*nx, self.gridW*ny))
    elseif self.state == 1 then
        --self:setDir(x, y)
    end
end
function Grid:onTouchEnded(x, y)
    if self.state == 0 then
        local np = self.bg:convertToNodeSpace(ccp(x, y))
        local nx, ny = self:getGrid(np.x, np.y)
        if not self:checkIn(nx, ny) then
            self.nb:removeFromParentAndCleanup(true)
        else
            self.state = 1
        end
    elseif self.state == 1 then

    end
end

