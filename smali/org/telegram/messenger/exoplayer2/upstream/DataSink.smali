.class public interface abstract Lorg/telegram/messenger/exoplayer2/upstream/DataSink;
.super Ljava/lang/Object;
.source "DataSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V
.end method

.method public abstract write([BII)V
.end method
