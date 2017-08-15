.class public Lorg/telegram/ui/Components/PopupAudioView;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "PopupAudioView.java"

# interfaces
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
.implements Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;


# instance fields
.field private TAG:I

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field protected currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastTimeString:Ljava/lang/String;

.field private progressView:Lorg/telegram/ui/Components/ProgressView;

.field private seekBar:Lorg/telegram/ui/Components/SeekBar;

.field private seekBarX:I

.field private seekBarY:I

.field private timeLayout:Landroid/text/StaticLayout;

.field private timePaint:Landroid/text/TextPaint;

.field timeWidth:I

.field private timeX:I

.field private wasLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->TAG:I

    new-instance v0, Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    new-instance v0, Lorg/telegram/ui/Components/ProgressView;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ProgressView;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    return-void
.end method

.method private didPressedButton()V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->setContentIsRead()V

    :cond_0
    if-eqz v0, :cond_1

    iput v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-ne v0, v3, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-ne v0, v4, :cond_4

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public downloadAudioIfNeed()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->TAG:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->requestLayout()V

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/PopupAudioView;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    const v2, -0x5e554d

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_fileStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v1, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    aget-object v0, v0, v1

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/PopupAudioView;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeX:I

    int-to-float v0, v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ProgressView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v3, 0x41200000    # 10.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeX:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v1, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SeekBar;->setSize(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x42bc0000    # 94.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ProgressView;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ProgressView;->height:I

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PopupAudioView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .locals 0

    return-void
.end method

.method public onSeekBarDrag(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    goto :goto_0
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/ui/Components/SeekBar;->onTouch(IFF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_3

    iput v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    move v0, v1

    :cond_3
    :goto_1
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    if-ne v5, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v1, :cond_5

    iput v8, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/PopupAudioView;->playSoundEffect(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PopupAudioView;->didPressedButton()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_6

    iput v8, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-lez v1, :cond_3

    :cond_7
    iput v8, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_1
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    const-string/jumbo v1, "chat_inAudioSeekbar"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "chat_inAudioSeekbarFill"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "chat_inAudioSeekbarSelected"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    const v1, -0x261d15

    const v2, -0x793a08

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ProgressView;->setProgressColors(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->requestLayout()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    return-void
.end method

.method public updateButtonState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_1
.end method

.method public updateProgress()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v7

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v2, :cond_4

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    :goto_2
    const-string/jumbo v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeLayout:Landroid/text/StaticLayout;

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    goto :goto_2

    :cond_6
    move v0, v7

    goto :goto_2
.end method
