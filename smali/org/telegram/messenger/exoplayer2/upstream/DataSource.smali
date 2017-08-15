.class public interface abstract Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
.end method

.method public abstract read([BII)I
.end method
